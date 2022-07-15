class Contato {

  late int id;
  late String email;
  late String senha;

  Contato(this.id, this.email, this.senha);

  @override
  String toString() {
    return 'Contato{id: $id, email: $email, senha: $senha}';
  }

}