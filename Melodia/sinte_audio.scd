s.boot;

b = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+ "/Sonidos/kick.wav");
//Sonidos en la carpeta; udu-s, pia,kick

(
SynthDef(\sonido1, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(b.numChannels, b.bufnum, rate, 1, sp * b.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * b.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);


// Probar sonido

Synth(\sonido1);


