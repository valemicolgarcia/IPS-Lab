
function graficarRta (n,S,i)
  subplot(2,2,i);
  stem(n,S)
  title(strcat('Sistema ', num2str(i)));
  xlabel('Instantes (n)');
  ylabel('Amplitud (x)');
end;
