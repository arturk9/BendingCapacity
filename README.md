# BendingCapacity
Akademia C# .NET Politechnika Gdańska

Celem projektu było wykonanie aplikacji, dzięki której można porównać nośności zginanego elementu żelbetowego, w zależności od wprowadzonego przez użytkownika zbrojenia. 

Opis projektu:
Projekt został wykonany w WPF MVVM.
W projekcie w celu lepszej organizacji plików klas dodałem kilka folderów - model, viewmodel, view oraz command i images.
W folderach model, viewmodel i view znajdują się odpowiednie pliki dla modelu MVVM. W folderze command znajdują się implemetnacje interfejsu ICommand. W folderze images znajdują się pliki tła oraz obrazki.

Instrukcja:
1) W podane textboxy należy wpisywać wartości zgodne z podpowiedziami w tooltipie (pojawią się po najechaniu na odpowiedni textbox, treści błędów oraz ograniczenia inputu dostępnę są w klasie Section w folderze Model).
2) Opcja oblicz dostępna jest dopiero po prawidłowym wypełnieniu textboxów.
3) Opcja usuń dostępna jest po kliknięciu na element listy.
4) Opcja usuń wszystkie dostępna jest jeśli ilość elementów na liście jest większa od 0.
5) Labelki w MainWindow u góry dodałem żeby aplikacja ładniej wyglądała, nie są pod nie podpięte żadne komendy.
