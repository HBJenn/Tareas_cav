//Secuencia de sonido

(
~son1 = Pdef(\son1, Pbind(\instrument, \sonido1,
	\dur, Pseq([1/4], inf),
	\sus, Pseq([0.2], inf),
	\rel, Pseq([0.2,0.4,0.3,2,0.5], inf),
	\rate, Pseq([0.2,2,1,3,0.1], inf),
	\sp, Pseq([0], inf),
	\amp, 0.6
))
);

~son1.play.quant(4);
~son1.stop;

s.quit; //apagar supercollider