describe "UCD grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-ucd")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.ucd")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.ucd"
