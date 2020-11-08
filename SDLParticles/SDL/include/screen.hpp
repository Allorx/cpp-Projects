//
//  screen.hpp
//  SDL
//
//  Created by Alex on 18/06/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

#ifndef screen_hpp
#define screen_hpp
#include <iostream>
#include <SDL.h>

namespace sc
{
    class Screen
    {
    public:
        const static int SCREEN_W = 1400;
        const static int SCREEN_H = 900;

    private:
        SDL_Window *m_window;
        SDL_Renderer *m_renderer;
        SDL_Texture *m_texture;
        Uint32 *m_buffer1;
        Uint32 *m_buffer2;

    public:
        Screen();
        bool setup();
        bool process();
        void update();
        void clear();
        void boxBlur();
        void setPixel(int x, int y, Uint8 red, Uint8 green, Uint8 blue);

        void close();
    };

} // namespace sc

#endif /* screen_hpp */
