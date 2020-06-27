//
//  screen.cpp
//  SDL
//
//  Created by Alex on 18/06/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

#include "screen.hpp"

namespace sc {
    Screen::Screen(): m_window(NULL), m_renderer(NULL), m_texture(NULL), m_buffer1(NULL), m_buffer2(NULL) {
        
    };
   
    bool Screen::setup(){
        /* Initiates SDL; must declare screen.close */
        if(SDL_Init(SDL_INIT_VIDEO) < 0){
            return false;
        }
        
        m_window = SDL_CreateWindow("Game", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, SCREEN_W, SCREEN_H, SDL_WINDOW_SHOWN);
        
        if(m_window == NULL){
            SDL_Quit();
            return false;
        }
        
        m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_ACCELERATED);
        m_texture = SDL_CreateTexture(m_renderer, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_STATIC, SCREEN_W, SCREEN_H);
        
        if(m_renderer == NULL){
            SDL_DestroyWindow(m_window);
            SDL_Quit();
            return false;
        }
        
        if(m_texture == NULL){
            SDL_DestroyRenderer(m_renderer);
            SDL_DestroyWindow(m_window);
            SDL_Quit();
            return false;
        }
        
        m_buffer1 = new Uint32[SCREEN_W*SCREEN_H];
        m_buffer2 = new Uint32[SCREEN_W*SCREEN_H];
        
        memset(m_buffer1, 0, SCREEN_W*SCREEN_H*sizeof(Uint32));
        memset(m_buffer2, 0, SCREEN_W*SCREEN_H*sizeof(Uint32));
        
        return true;
    };
    
    void Screen::update(){
        SDL_UpdateTexture(m_texture, NULL, m_buffer1, SCREEN_W*sizeof(Uint32));
        SDL_RenderClear(m_renderer);
        SDL_RenderCopy(m_renderer, m_texture, NULL, NULL);
        SDL_RenderPresent(m_renderer);
    };
    
    void Screen::setPixel(int x, int y, Uint8 red, Uint8 green, Uint8 blue){
        if(x<=0 || x>=SCREEN_W || y<=0 || y>=SCREEN_H){
            return;
        }
        
        Uint32 colour = 0;
        
        colour += red;
        colour <<= 8;
        colour += green;
        colour <<= 8;
        colour += blue;
        colour <<= 8;
        colour += 0xff;
        
        m_buffer1[(y*SCREEN_W)+x] = colour;
    };
    
    bool Screen::process(){
        SDL_Event event;
        while(SDL_PollEvent(&event)){
            if(event.type == SDL_QUIT){
                return false;
            }
        }
        return true;
    };
  
    void Screen::boxBlur(){
        Uint32 *temp = m_buffer1;
        m_buffer1 = m_buffer2;
        m_buffer2 = temp;
        
        for(int y = 0; y<SCREEN_H;y++){
            for(int x = 0; x<SCREEN_W; x++){
                //3*3 matrix around selected pixel
                int redTotal = 0;
                int greenTotal = 0;
                int blueTotal = 0;
                for(short row = -1; row <= 1; row++){
                    for(short col = -1; col <= 1; col++){
                        int currentX = x+row;
                        int currentY = y+col;
                        if(currentX >= 0 && currentX < SCREEN_W && currentY >= 0 && currentY < SCREEN_H){
                            Uint32 colour = m_buffer2[currentY*SCREEN_W+currentX];
                            Uint8 red = colour >> 24;
                            Uint8 green = colour >> 16;
                            Uint8 blue = colour >> 8;
                            
                            redTotal += red;
                            greenTotal += green;
                            blueTotal += blue;
                        }
                    }
                }
                Uint8 redFinal = redTotal/9;
                Uint8 greenFinal = greenTotal/9;
                Uint8 blueFinal = blueTotal/9;
                
                setPixel(x, y, redFinal, greenFinal, blueFinal);
            }
        }
    }
    
    void Screen::clear(){
        memset(m_buffer1, 0, SCREEN_W*SCREEN_H*sizeof(Uint32));
    }
   
    void Screen::close(){
        std::cout<<"Quitting\n";
        delete [] m_buffer1;
        delete [] m_buffer2;
        SDL_DestroyRenderer(m_renderer);
        SDL_DestroyTexture(m_texture);
        SDL_DestroyWindow(m_window);
        SDL_Quit();
    };
    
    
}
