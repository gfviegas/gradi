-> O arquivo moviesinstance01.xml serve para testar a validação apenas (seria como se ele tivesse sido fruto de um upload do usuário...)
-> O arquivo moviesvalidation.xsd realiza a validação de um arquivo XML. Ele inclusive faz algumas limpezas (ex.: Genres está sendo tratado como enumeração (abra o arquivo e veja por si mesmo))
-> Os testes estão sendo realizados no Notepad++ por um plugin de validação (XML Tools).
---> Perguntas: 
-----> Tratar Genre como enumeração?
-----> Como vamos colocar o cabeçalho no arquivo XML subido pelo usuário para que este seja validado com o arquivo xsd criado? (vamos forçar uma reescrita no início do arquivo? Talvez funcione... Mas vamos procurar outra alternativa, se existir)
-----> Quem irá fazer a inserção desses dados inseridos no banco? (Lembre-se de evitar redundância para o banco do MySQL -> Não inserir o ator de novo se ele estiver lá, por exemplo)
-----> Se é possível converter JSON para XML, podemos realizar a validação apenas dos arquivos XML, correto? (pois basta transformar o JSON para XML e validá-lo)
-> Talvez seja interessante criar mais modelos de validação para permitir mais de um tipo de arquivo XML... (por exemplo: Colocar atributo value para todas (ou quase todas) as tags)

---> Exemplo de limpeza que NÃO está sendo feita: Country (de Company) -> United Stated / US / ...



LINKS IMPORTANTES (para aprendizado e para a DOC):
https://www.w3.org/2001/XMLSchema#intro
https://www.w3.org/TR/xmlschema11-1/#Attribute_Declaration_details
https://www.w3.org/TR/xmlschema11-2/#built-in-datatypes
https://www.w3.org/TR/xmlschema11-2/datatypes.html#decimal
https://www.w3.org/2009/XMLSchema/XMLSchema.xsd