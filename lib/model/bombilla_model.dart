class BombillaModel {
  bool _encendida = false;

  bool get isOn => _encendida;

  void enciende() {
    _encendida = true;
    _notifyObservers();
    apagaAlRato();
  }

  void apagaAlRato() async {
    await Future.delayed(Duration(seconds: 1));
    _encendida = false;
    _notifyObservers();
  }

  void dispose() {
    print("A la basura!");
  }

  // Observadores

  Set<BombillaModelObserver> _observers = {};

  void addObserver(BombillaModelObserver widget) {
    _observers.add(widget);
  }

  void removeObserver(BombillaModelObserver widget) {
    _observers.remove(widget);
  }

  void _notifyObservers() {
    _observers.forEach((w) => w.onBombillaModelChanged());
  }
}

abstract class BombillaModelObserver {
  void onBombillaModelChanged();
}
