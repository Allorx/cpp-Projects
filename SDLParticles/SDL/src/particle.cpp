//
//  particle.cpp
//  SDL
//
//  Created by Alex on 20/06/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

#include "particle.hpp"
#include <math.h>
#include <stdlib.h>

namespace sc {
    Particle::Particle(){
        init();
    }
    void Particle::init(){
        m_x = 0;
        m_y = 0;
        m_speed = ((double)rand()/RAND_MAX)*SPEED_CONTROL;
        m_speed *= m_speed;
        m_angle = (2.0*M_PI*rand()/RAND_MAX);
    }
    void Particle::particleRecall(){
        if(m_x < -1 || m_x >1 || m_y <-1 || m_y >1)
            init();
    }
    void Particle::randParticleRecall(){
        if(rand()<RAND_MAX/100){
            init();
        }
    }
    void Particle::wallCollision(double *xSpeed, double *ySpeed){
//        Bounds based on screen height and width ratio.
//        ????????????????????????  cannot get it to rebound ? init with last known value?
        if(m_x<-1.0 || m_x>1.0){
            *xSpeed = - *xSpeed;
        }
        if(m_y<-0.8 || m_y>0.8){
            *ySpeed = - *ySpeed;
        }
    };
    void Particle::updateParticle(int interval){
        m_angle += interval*0.0002;
        double xSpeed = m_speed*cos(m_angle);
        double ySpeed = m_speed*sin(m_angle);
       
        wallCollision(&xSpeed, &ySpeed);
        
        m_x += xSpeed*interval;
        m_y += ySpeed*interval;
        
       
        randParticleRecall();
//        particleRecall();
    }
}
