# Rastgele veri oluştur
set.seed(123)
n <- 50
y <- rnorm(n)

# Veriyi artan bir trendle güncelle
trend <- 0.2 * (1:n)
y <- y + trend

# Veriyi görselleştir
plot(1:n, y, type = "l", col = "blue", xlab = "Zaman", ylab = "Değer", main = "Mann-Kendall Eğilim Testi İçin Örnek Veri")

# Gerekli paketi yükleyin (eğer yüklü değilse)
if (!requireNamespace("Kendall", quietly = TRUE)) {
  install.packages("Kendall")
}

# Kendall paketini yükleyin
library(Kendall)

# Mann-Kendall testi
result <- kendall.test(y)
print(result)
