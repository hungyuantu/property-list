(Comment) @comment

(XMLDecl "xml" @keyword)

(XMLDecl ["version" "encoding"] @property)

(VersionNum) @number

(EncName) @string.special

(doctypedecl "DOCTYPE" @keyword)

(doctypedecl (Name) @type)

["PUBLIC" "SYSTEM"] @keyword

(PubidLiteral) @string.special

(SystemLiteral (URI) @link_uri)

(STag (Name) @punctuation.bracket)

(ETag (Name) @punctuation.bracket)

(EmptyElemTag (Name) @punctuation.bracket (#any-of? @punctuation.bracket "array" "dict" "string" "data"))

(EmptyElemTag (Name) @boolean (#any-of? @boolean "true" "false"))

(Attribute (Name) @attribute)

(Attribute (AttValue) @string)

(element . (STag (Name) @_name) . (content) @property (#eq? @_name "key"))

(element . (STag (Name) @_name) . (content) @string (#eq? @_name "string"))

(element . (STag (Name) @_name) . (content) @string.special (#any-of? @_name "date" "data"))

(element . (STag (Name) @_name) . (content) @number (#any-of? @_name "integer" "real"))

[(EntityRef) (CharRef)] @string.escape

["<?" "?>" "<!" "<" ">" "</" "/>"] @punctuation.bracket
