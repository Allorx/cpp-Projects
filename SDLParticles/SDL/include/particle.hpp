//
//  particle.hpp
//  SDL
//
//  Created by Alex on 20/06/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

#ifndef particle_hpp
#define particle_hpp

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

namespace sc
{
    struct Particle
    {
        const double SPEED_CONTROL = 0.01;
        double m_speed;
        double m_angle;
        double m_x;
        double m_y;

    private:
        void init();
        void particleRecall();
        void wallCollision(double *xSpeed, double *ySpeed);
        void randParticleRecall();

    public:
        Particle();
        void updateParticle(int interval);
    };
} // namespace sc
#endif /* particle_hpp */
