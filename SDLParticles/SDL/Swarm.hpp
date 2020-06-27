//
//  Swarm.hpp
//  SDL
//
//  Created by Alex on 20/06/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

#ifndef Swarm_hpp
#define Swarm_hpp
#include "particle.hpp"

namespace sc {
    class Swarm{
    public:
        const static int N_PARTICLES = 5000;
    private:
        Particle *m_pParticles;
        int lastTime = 0;
    public:
        Swarm();
        ~Swarm();
        void update(int time);
        
        Particle * const getParticles(){return m_pParticles;};
    };
}

#endif /* Swarm_hpp */
