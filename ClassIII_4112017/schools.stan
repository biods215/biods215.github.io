data {
     int<lower=0> J;          // number of schools
     real betahat[J];               // estimated treatment effects
     real<lower=0> sigma[J];  // standard error of effect estimates
      }
parameters {
     real beta;
     real<lower=0> tau;
     vector[J] eta;
	    }
transformed parameters {
     vector[J] theta;
     theta = beta + tau * eta;
        }
model {
     target += normal_lpdf(eta | 0, 1);
     target += normal_lpdf(betahat | theta, sigma);
       }