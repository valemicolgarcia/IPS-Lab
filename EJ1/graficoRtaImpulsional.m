function graficoRtaImpulsional (n, h, i)
    figure;
    subplot(3,1,i);
    titulo = sprintf('Respuesta impulsional del sistema %d', i);
    stem(n, h);
    xlabel("n")
    ylabel("h[n]")
    title(titulo);
end
