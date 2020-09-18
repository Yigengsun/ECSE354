    z = 0:0.001:0.4;
    t = 0:5e-12:5e-9;
    fv = zeros(length(z),length(t));
    bv = zeros(length(z),length(t));
    
    for m = 1: length(z)
        [fv(m,:),~] = forward_wave(1, 2*pi*10^9, 0, 50, 2*10^8, z(m), t);
        [bv(m,:),~] = backward_wave(1, 2*pi*10^9, 0, 50, 2*10^8, z(m), t);
    end