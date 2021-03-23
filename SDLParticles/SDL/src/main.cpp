//
//  main.cpp
//  SDL
//
//  Created by Alex on 17/06/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

#define SDL_MAIN_HANDLED
#include <iostream>
#include <SDL2/SDL.h>
#include <math.h>
#include <stdlib.h>
#include "screen.hpp"
#include "Swarm.hpp"
#include <time.h>

using namespace sc;

int main()
{
    srand((unsigned int)time(NULL));

    Screen screen;
    screen.setup();

    Swarm swarm1;

    int sWidth = Screen::SCREEN_W / 2;
    int sHeight = Screen::SCREEN_H / 2;

    while (true)
    { 
        int timeElapsed = SDL_GetTicks();

        const Particle *const pParticles = swarm1.getParticles();

        for (int i = 0; i < Swarm::N_PARTICLES; i++)
        {
            Particle particle1 = pParticles[i];

            int x = (particle1.m_x + 1) * sWidth;
            int y = particle1.m_y * sWidth + sHeight;
            int redCount = (1 + SDL_sin(timeElapsed * 0.0001)) * 128;
            int greenCount = (1 + SDL_sin(timeElapsed * 0.0002)) * 128;
            int blueCount = (1 + SDL_sin(timeElapsed * 0.0005)) * 128;

            screen.setPixel(x, y, redCount, greenCount, blueCount);
        }

        swarm1.update(timeElapsed);
        screen.update();
        screen.boxBlur();

        if (screen.process() == false)
        {
            break;
        }
    }

    screen.close();
    return 0;
}
