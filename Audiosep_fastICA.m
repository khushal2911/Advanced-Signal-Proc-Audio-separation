mix_aud1 = wavread('mix1_set1.wav');
mix_aud2 = wavread('mix2_set1.wav');
mixed_audsig = [mix_aud1, mix_aud2]';
[ica_audsig, A, W] = fastica(mixed_audsig);
soundsc(ica_audsig(1,:));
soundsc(ica_audsig(2,:));
figure(1)
icaplot('classic',mixed_audsig,0,0,0,'individual mixtures: mix_aud1 and mix_aud2');
figure(2)
icaplot('histogram',mixed_audsig);
figure(3)
icaplot('scatter',mixed_audsig,1,mixed_audsig,2,0,'scatter plot of mixture of audio signals');
figure(4)
icaplot('classic',ica_audsig,0,0,0,'independent components/signals: s1 and s2');
figure(5)
icaplot('histogram',ica_audsig);
figure(6)
icaplot('scatter',ica_audsig,1,ica_audsig,2,0,'scatter plot of separated audio signals');