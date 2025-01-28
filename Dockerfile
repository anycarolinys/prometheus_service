# Usar a imagem oficial do Prometheus
FROM prom/prometheus

# Copiar a configuração personalizada do Prometheus
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expor a porta do Prometheus
EXPOSE 9090

# Comando para rodar o Prometheus
CMD [ "--config.file=/etc/prometheus/prometheus.yml" ]