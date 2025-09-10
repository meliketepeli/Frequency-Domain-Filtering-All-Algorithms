## 🔬 Kullanılan Algoritmalar

Projede uygulanan başlıca algoritmalar:

FFT (Fast Fourier Transform)
Görüntüyü frekans alanına dönüştürmek için kullanılır.

IFFT (Inverse Fast Fourier Transform)
Frekans alanından tekrar uzamsal (spatial) alana dönüşüm yapılır.

High-Pass Filter (Yüksek Geçiren Filtre)
Düşük frekans bileşenlerini kaldırır, kenarları ve detayları vurgular.

Low-Pass Filter (Alçak Geçiren Filtre)
Yüksek frekans bileşenlerini kaldırır, gürültüyü azaltır ve görüntüyü yumuşatır.

## 💻 Kod Açıklamaları
1. FFT.m

Görüntünün Fourier dönüşümü alınır.

Kompleks büyüklük (magnitude), log format ve frekans spektrumları gösterilir.

İleri ve ters dönüşümler test edilir.

2. FFT_and_IFFT.m

FFT ile spektrumun güç (power) ve faz (phase) bileşenleri ayrı ayrı incelenir.

IFFT ile görüntü tekrar oluşturulur.

3. High_Pass_Filter.m

Düşük frekans bileşenleri sıfırlanarak kenarlar vurgulanır.

Yüksek geçiren filtre uygulanmış görüntü elde edilir.

4. Low_Pass_Filter.m

Yüksek frekans bileşenleri sıfırlanarak gürültü azaltılır.

Alçak geçiren filtre sonrası görüntü elde edilir.

## ⚙️ Kurulum

Projeyi çalıştırmak için MATLAB gereklidir.

🔹 Windows

MATLAB resmi sitesinden MATLAB’i indirin.

İndirdiğiniz projeyi bilgisayarınıza kopyalayın:

git clone https://github.com/meliketepeli/Frequency-Domain-Filtering-All-Algorithms.git


MATLAB’i açın ve proje klasörünü seçin.

İstediğiniz .m dosyasını çalıştırın (ör: FFT.m).

🔹 MacOS

MATLAB’i MathWorks üzerinden indirin.

Terminali açıp projeyi klonlayın:

git clone https://github.com/meliketepeli/Frequency-Domain-Filtering-All-Algorithms.git


MATLAB uygulamasını açıp proje klasörüne gidin.

İlgili dosyayı çalıştırın.

▶️ Kullanım

Her .m dosyası belirli bir algoritmayı uygular.
Örneğin:

% FFT.m dosyası
image=imread("image1.bmp");
fast=fft2(image);
imshow(uint8(abs(fftshift(fast))));


Çalıştırıldığında görüntünün Fourier spektrumu ekranda gösterilir.

## 🖼️ Örnek Çıktılar
| Algoritma            | Çıktı Örneği                      |
| -------------------- | --------------------------------- |
| **FFT Spektrumu**    | ![FFT](docs/fft_example.png)      |
| **High-Pass Filter** | ![HPF](docs/highpass_example.png) |
| **Low-Pass Filter**  | ![LPF](docs/lowpass_example.png)  |
