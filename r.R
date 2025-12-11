# Toprak türleri
toprak_turleri <- c('Toprak1', 'Toprak2', 'Toprak3', 'Toprak4')

# Deneme tohum türleri
tohum_turleri <- c('Tohum1', 'Tohum2', 'Tohum3', 'Tohum4', 'Tohum5')

# Güncellenmiş verim verisi
verim <- matrix(c(250, 260, 280, 265, 300,
                  320, 315, 328, 400, 405,
                  295, 360, 285, 320, 340,
                  300, 320, 310, 340, 380),
                nrow = 4, byrow = TRUE,
                dimnames = list(toprak_turleri, tohum_turleri))

veri_df <- as.data.frame(verim)
veri_df

# Özetleyici istatistikler
summary(veri_df)

#Kolmogrov_Smirnov Normallik Testi

ks_test_result <- ks.test(veri_subset, "pnorm")
ks_test_result

# Box Plot Çizimi
boxplot(veri_df, notch = TRUE, col = "lightblue", main = "Toprak Türleri ve Tohum Türleri İçin Verimlilik Box Plot",
        xlab = "Tohum Türleri", ylab = "Verim")

# Veriler
grup1 <- c(80, 70, 60, 90, 95, 100, 102, 90, 96, 98, 105, 120, 112, 115, 118, 90, 80, 82, 85, 90)
grup2 <- c(105, 90, 92, 96, 80, 85, 75, 102, 90, 96, 98, 99, 101, 102, 95, 97, 99, 110, 105, 102)

# Verileri grup etiketleri ile birleştirme
veriler <- c(grup1, grup2)
grup_etiketleri <- rep(c("10-29", "30-49"), each = length(grup1))

# Mann-Whitney U testi
test_sonucu <- wilcox.test(veriler ~ grup_etiketleri)

# Test sonuçlarını görüntüleme
print(test_sonucu)

# Sadece Toprak 2 ve Toprak 3'e ait verileri seçme
toprak_2_3_veriler <- veri[c('Toprak2', 'Toprak3'), ]

# Her iki grup için de en az iki gözlem kontrolü
if (sum(!is.na(toprak_2_3_veriler$Toprak2)) >= 2 && sum(!is.na(toprak_2_3_veriler$Toprak3)) >= 2) {
  # Bağımlı Wilcoxon testi
  test_sonucu <- wilcox.test(toprak_2_3_veriler$Toprak2, toprak_2_3_veriler$Toprak3, paired = TRUE, alternative = "two.sided")
  # Test sonuçlarını görüntüleme
  print(test_sonucu)
} else {
  print("Her iki grup için de en az iki gözlem olmalıdır.")
}


# Veri oluşturma
veri <- data.frame(
  Toprak1 = c(80, 85, 90, 95, 100),
  Toprak2 = c(105, 90, 92, 96, 80),
  Toprak3 = c(92, 96, 98, 99, 101),
  Toprak4 = c(78, 82, 85, 87, 90)
)

# Sadece Toprak 2 ve Toprak 3'e ait verileri seçme
toprak_2_3_veriler <- veri[c('Toprak2', 'Toprak3'), ]

# Bağımlı Wilcoxon testi
test_sonucu <- wilcox.test(toprak_2_3_veriler$Toprak2, toprak_2_3_veriler$Toprak3, paired = TRUE, alternative = "two.sided")

# Test sonuçlarını görüntüleme
print(test_sonucu)


# Veri Girişi
group1 <- c(80, 70, 60, 90, 95, 100, 102, 90, 96, 98, 105, 120, 112, 115, 118, 90, 80, 82, 85, 90)
group2 <- c(105, 90, 92, 96, 80, 85, 75, 102, 90, 96, 98, 99, 101, 102, 95, 97, 99, 110, 105, 102)
group3 <- c(120, 100, 120, 125, 128, 127, 130, 142, 100, 110, 95, 90, 98, 100, 102, 98, 96, 97, 95, 125)

# Gruplar
groups <- rep(c("Group1", "Group2", "Group3"), each = 20)

# Veri Çerçevesi Oluştur
df <- data.frame(Values = c(group1, group2, group3), Groups = groups)

# Kruskal-Wallis Testi
kruskal_test_result <- kruskal.test(Values ~ Groups, data = df)

# Sonuçları Göster
print(kruskal_test_result)

# Dunn Testi için Kütüphaneyi Yükle
install.packages("dunn.test")
library(dunn.test)

# Dunn Testi
dunn_test_result <- dunn.test(df$Values, df$Groups, method = "bonferroni")

# Sonuçları Göster
print(dunn_test_result)

# Verim verisi
verim <- data.frame(
  'Toprak1' = c(80, 85, 90, 95, 100),
  'Toprak2' = c(105, 90, 92, 96, 80),
  'Toprak3' = c(92, 96, 98, 99, 101),
  'Toprak4' = c(78, 82, 85, 87, 90)
)

# Friedman testi
test_sonucu <- friedman.test(as.matrix(verim))

# Test sonuçlarını görüntüleme
print(test_sonucu)

# Veri Girişi
kandaki_seker <- c(80, 70, 60, 90, 95, 100, 102, 90, 96, 98, 105, 120, 112, 115, 118, 90, 80, 82, 85, 90)

# Medyan Değerinin Testi
median_ <- 83
nplus <- sum(kandaki_seker > median_)
nneg <- sum(kandaki_seker < median_)
n <- nplus + nneg

# Binom Testi
binom_test_result <- binom.test(nplus, n, p = 0.5, alternative = 'less')

# Sonuçları Göster
print(binom_test_result)

# Veri Girişi
kandaki_seker <- c(80, 70, 60, 90, 95, 100, 102, 90, 96, 98, 105, 120, 112, 115, 118, 90, 80, 82, 85, 90)

# Medyan ve Özellikler
median_ <- 83
nplus <- sum(kandaki_seker > median_)
nneg <- sum(kandaki_seker < median_)
n <- nplus + nneg

# Wilcoxon İşaret Testi
wilcoxon_test_result <- wilcox.test(kandaki_seker - median_, alternative = 'less', method = 'approx',
                                    zero.method = 'zsplit', correct = TRUE)

# Sonuçları Göster
print(wilcoxon_test_result)


# Verim verisi
verim <- matrix(c(250, 260, 280, 265, 300,
                  320, 315, 328, 400, 405,
                  295, 360, 285, 320, 340,
                  300, 320, 310, 340, 380), nrow = 4, byrow = TRUE)

# Veriyi bir veri çerçevesine dönüştürme
veri_df <- as.data.frame(verim)
colnames(veri_df) <- c('Tohum1', 'Tohum2', 'Tohum3', 'Tohum4', 'Tohum5')

# Friedman testi
test_sonucu <- friedman.test(veri_df)

# Test sonuçlarını görüntüleme
print(test_sonucu)


