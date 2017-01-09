%% Name: generateSamples
% author: xu wei
%
% parameters:
% input: input num
% output: output num
% num: sample num
%
% return:
% samples: samples

function samples = generateSamples(input,output,num)
  disp('You called function generateSamples')

  lower = 1;
  higher = 10001;
  for(i = 1:num)
    for(j = 1:input)
      sampleInput(j) = lower + (higher-lower) * rand();
    end
    for(j = 1:output)
      sampleOutput(j) = sum( log(sampleInput) ) * ( sin(j)*j );
    end
    samples(i,:) = [sampleInput sampleOutput];
  end

  samples;  % this is output
end
