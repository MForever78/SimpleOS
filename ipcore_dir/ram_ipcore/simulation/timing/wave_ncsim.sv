
 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"


      waveform add -signals /ram_ipcore_tb/status
      waveform add -signals /ram_ipcore_tb/ram_ipcore_synth_inst/bmg_port/CLKA
      waveform add -signals /ram_ipcore_tb/ram_ipcore_synth_inst/bmg_port/ADDRA
      waveform add -signals /ram_ipcore_tb/ram_ipcore_synth_inst/bmg_port/DINA
      waveform add -signals /ram_ipcore_tb/ram_ipcore_synth_inst/bmg_port/WEA
      waveform add -signals /ram_ipcore_tb/ram_ipcore_synth_inst/bmg_port/DOUTA
console submit -using simulator -wait no "run"
