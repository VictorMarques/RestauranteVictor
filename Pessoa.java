
public class Pessoa {
	private String nome;

	public Pessoa(String meuNome){
		this.nome = meuNome;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String novoNome) {
		this.nome = novoNome;
	}
	
	public void seMostra(){
		System.out.println(this.getNome());
	}

}
