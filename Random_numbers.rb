#The goal of this task is to generate a collection filled with 1000 normally distributed random (or pseudorandom) numbers with a mean of 1.0 and a standard deviation of 0.5

Array.new(1000) { 1 + Math.sqrt(-2 * Math.log(rand)) * Math.cos(2 * Math::PI * rand) }
