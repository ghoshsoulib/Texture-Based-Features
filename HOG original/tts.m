function[] = tts(sentence)
 if nargin<1
     sentence = '';
 end
 
 try
     NET.addAssembly('System.Speech');
     Speaker = System.Speech.Synthesis.SpeechSynthesizer;
     if ~isa(sentence,'cell')
         sentence = {sentence};
     end
     
     for n=1:length(sentence)
         Speaker.Speak (sentence{n});
     end
 end
 
        

end

