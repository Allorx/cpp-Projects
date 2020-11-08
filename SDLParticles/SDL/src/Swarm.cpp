//
//  Swarm.cpp
//  SDL
//
//  Created by Alex on 20/06/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

#include "Swarm.hpp"

namespace sc{
    Swarm::Swarm(): lastTime(0) {
        m_pParticles = new Particle[N_PARTICLES];
    }
    Swarm::~Swarm(){
        delete [] m_pParticles;
    }
    void Swarm::update(int time){
        int interval = time - lastTime;
        for(int i=0; i<Swarm::N_PARTICLES; i++){
            m_pParticles[i].updateParticle(interval);
        }
        lastTime = time;
    }
}
