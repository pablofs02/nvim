"syn sync region CodigoHTML
" syn-sync-groupthere

syn keyword Metodo GET HEAD POST PUT DELETE CONNECT OPTIONS TRACE PATCH
syn match Intervalo /\d\+-\d\+/ contained
syn match VersionHTTP /HTTP\/\(1.1\|1\(.0\)\?\|2\(.0\)\?\|3\(.0\)\?\)/
syn match Comillas /\\\@<!"\([^"]\|\\"\)*\(\\\)\@<!"/
syn match Comilla /'[^ ]\+'/
syn match Num /\d\+/
syn match Url /http[s]\?:\/\/[^ \t|]*/
syn match Ruta /[^ \t]\@<!\(\/\|\~\/\|[.]\{1,2}\/\)[^ \t]*/
syn match Fecha /\d\+\/\d\+\(\/\d\+\)\?/
syn match FechaISO /\d\+-\d\{2}-\d\{2}/
syn match Hora /\d\+:\d\+\(:\d\+\)\?/
syn match DirIp /\d\+\.\d\+\.\d\+\.\d\+\(\(\/\|:\)\d\+\)\?/
syn match Comentario /^\s*#.*$/
syn match ColorHex /#\x\{6,8}/
syn match ColorHex6 /#\x\{6}/ contained containedin=ColorHex
syn match ColorHex6Azul /#\x\{6}/ contained containedin=ColorHex6
syn match ColorHex6Verde /#\x\{4}/ contained containedin=ColorHex6Azul
syn match ColorHex6Rojo /#\x\{2}/ contained containedin=ColorHex6Verde contains=Almoadilla
syn match ColorHex8 /#\x\{8}/ contained containedin=ColorHex
syn match ColorHex8Alfa /#\x\{8}/ contained containedin=ColorHex8
syn match ColorHex8Azul /#\x\{6}/ contained containedin=ColorHex8Alfa
syn match ColorHex8Verde /#\x\{4}/ contained containedin=ColorHex8Azul
syn match ColorHex8Rojo /#\x\{2}/ contained containedin=ColorHex8Verde contains=Almoadilla
syn match Almoadilla /#/ contained
syn match Porcentaje /\d\+%/
syn match FlechaSD /->/ containedin=Lista,Metadato
syn match FlechaDD /=>/ containedin=Lista
syn match FlechaSI /<-/ containedin=Lista
syn match FlechaDI /<=/ containedin=Lista
syn match FlechaDoble /<\->/ containedin=Lista
hi Metodo ctermfg=5
hi VersionHTTP ctermfg=1
hi Comillas ctermfg=6
hi Comilla ctermfg=6
hi Num ctermfg=6
hi Url ctermfg=13
hi Ruta ctermfg=14
hi Fecha ctermfg=14
hi FechaISO ctermfg=6
hi Hora ctermfg=6
hi DirIp ctermfg=3
hi Comentario ctermfg=8
hi ColorHex3Azul ctermfg=12
hi ColorHex3Verde ctermfg=10
hi ColorHex3Rojo ctermfg=9
hi ColorHex4Alfa ctermfg=8
hi ColorHex4Azul ctermfg=12
hi ColorHex4Verde ctermfg=10
hi ColorHex4Rojo ctermfg=9
hi ColorHex6Azul ctermfg=12
hi ColorHex6Verde ctermfg=10
hi ColorHex6Rojo ctermfg=9
hi ColorHex8Alfa ctermfg=8
hi ColorHex8Azul ctermfg=12
hi ColorHex8Verde ctermfg=10
hi ColorHex8Rojo ctermfg=9
hi Almoadilla ctermfg=5
hi Porcentaje ctermfg=6
hi FlechaSD ctermfg=1
hi FlechaDD ctermfg=1
hi FlechaSI ctermfg=1
hi FlechaDI ctermfg=1
hi FlechaDoble ctermfg=1

syn match CeldaPetra /^[A-Z]\+\d\+:.*$/
syn match SeparadorPetra /:/ contained containedin=CeldaPetra
syn match CeldaPetraNumero /^[A-Z]\+\d\+/ contained containedin=CeldaPetra
syn match ExprPetra /[^:]\+$/ contained containedin=CeldaPetra
syn match Metadato /^\s*\[.*\]$/
syn region MetadatoMulti start=/^\s*\[\[/ end=/\]\]$/
syn match Titulo /^\s*\([0-9]\+\.\)\+.*$/
syn match Comando /^\s*>.*/ contains=FlechaSD
syn match Lista /^\s*-[^:]*\([^:]*$\|:\)/ contains=Enlace
syn match ListaOrdenada /^\s*[A-ZÑÇa-zñç0-9.]\+)/
syn match Especial /^\s*+[^:]*\([^:]*$\|:\)/ contains=FlechaSD
syn match Importante /^\s*\*.*$/ contains=FlechaSD
syn match Ejemplo /^\s*Ej.*: .*$/
syn match Archivo /^\s*@.*$/
syn match Enlace /\[[^\]]*\]@\(([^)]*)\|[^( ][^ ]*\)/ contains=RutaEnlace
syn match RutaEnlace /@\(([^)]*)\|[^( ][^ ]*\)/ contained
syn match Cita /^\s*".*"\s*[\n"]*\s*-.*$/ contains=CitaTexto,CitaAutor
syn match CitaTexto /^\s*".*"/ contained containedin=Cita
syn match CitaAutor /-\s*.*$/ contained containedin=Cita
syn match PuroTexto /^\s*".*"$/
syn match Separador /^\s*=\+$/
syn match Tabla /^\s*|.*$/
syn match Celda /[^|]\@<![^|]*/ contained containedin=Tabla contains=Intervalo,FechaISO,Hora,Comillas,DirIp,Metodo,VersionHTTP,Ruta,Url
syn match SeparaCelda /|/ contained containedin=Tabla
syn match Numeral /\(|\)\@<=\s*[+-]\?\d\+[.,e]\?\d*\s*\(\n\|\(|\)\@=\)/ contained containedin=Celda
syn match Progreso /\d\+\/\d\+/ contained containedin=Celda
syn match ProgresoCompletado /\(\d\+\)\/\1\(\d\)\@!/ contained containedin=Celda
syn match ProgresoNulo /0\+\/\d\+/ contained containedin=Celda
syn match Pregunta /^\s*\(¿.*?$\|?.*\)/ contains=FlechaSD
syn match Exclamacion /^\s*\(¡.*!$\|!.*\)/ contains=FlechaSD
syn match Variable /^\s*\$.*$/
hi CeldaPetraNumero ctermfg=6
hi SeparadorPetra ctermfg=3
hi ExprPetra ctermfg=5
hi Metadato cterm=bold ctermfg=13
hi MetadatoMulti cterm=bold ctermfg=13
hi Titulo cterm=bold ctermfg=12
hi Comando ctermfg=4
hi Lista ctermfg=10
hi ListaOrdenada ctermfg=2
hi Especial ctermfg=6
hi Importante ctermfg=9
hi Ejemplo ctermfg=11
hi Archivo ctermfg=13
hi Enlace ctermfg=5
hi RutaEnlace ctermfg=13
hi CitaTexto cterm=italic ctermfg=6
hi CitaAutor ctermfg=5
hi PuroTexto cterm=italic ctermfg=6
hi Separador ctermfg=3
hi SeparaCelda ctermfg=3
hi Intervalo ctermfg=6
hi Numeral ctermfg=6
hi Progreso ctermfg=2
hi ProgresoCompletado ctermfg=4
hi ProgresoNulo ctermfg=1
hi Pregunta ctermfg=4
hi Exclamacion ctermfg=9
hi Variable ctermfg=5

" HTML
syn region CodigoHTML start=/^\s*html{{{/ end=/}}}$/
syn match EncabezadoHTML contained containedin=CodigoHTML /<!DOCTYPE html>/
syn region ComentarioHTML start=/<!--/ end=/-->/ contained containedin=CodigoHTML
syn region EtiquetaInicioHTML start=/<[^!]/ end=/[/]\?>/ contained containedin=CodigoHTML
syn region EtiquetaFinHTML start=/<\// end=/>/ contained containedin=CodigoHTML
syn keyword EtiquetasHTML contained containedin=EtiquetaInicioHTML,EtiquetaFinHTML a abbr address area article aside audio b base bb bdo blockquote body br button canvas caption cite code col colgroup command datagrid datalist dd del details dialog div dfn dl dt em embed fieldset figure footer form h1 h2 h3 h4 h5 h6 head header hgroup hr html i iframe img input ins kbd label legend li link mark map menu meta meter nav noscript object ol optgroup option output p param pre progress q ruby rp rt samp script section select small source span strong style sub sup table tbody td textarea tfoot th thead time title tr ul var video
syn keyword EtiquetasMalasHTML contained containedin=EtiquetaInicioHTML,EtiquetaFinHTML acronym applet basefont big center dir font frame frameset isindex noframes s strike tt u xmp
syn keyword AtributosGlobalesHTML contained class contenteditable contextmenu dir draggable id irrelevant lang ref registrationmark tabindex template title
syn keyword AtributosLocalesHTML contained accept accept-charset action alt async autobuffer autocomplete autofocus autoplay charset checked cite cols colspan controls content coords data datetime default defer disabled enctype headers height hidden high http-equiv icon ismap for form formaction formenctype formmethod formnovalidate formtarget href hreflang label list loop low manifest max maxlength media method min multiple name object open optimum pattern ping placeholder poster radiogroup readonly rel replace required reversed rows rowspan sandbox scope scoped selected shape size sizes src start step target title type usemap value width wrap
hi EncabezadoHTML ctermfg=246
hi ComentarioHTML ctermfg=246
hi EtiquetaInicioHTML ctermfg=2
hi EtiquetaFinHTML ctermfg=4
hi EtiquetasHTML ctermfg=208
hi EtiquetasMalasHTML ctermfg=1

" CSS
syn region CodigoCSS start=/^\s*css{{{/ end=/}}}$/ contains=DeclaracionCSS
syn region DeclaracionCSS start=/.*[^@]{/ end=/}/ contained containedin=CodigoCSS
syn region BloqueCSS start=/{/ end=/}/ contained containedin=DeclaracionCSS
hi BloqueCSS ctermfg=1

" JavaScript
syn region CodigoJS start=/^\s*\(js\|javascript\){{{/ end=/}}}$/
syn keyword ReservadasJS contained containedin=CodigoJS const function async await if else for false true in typeof try catch return let var class
syn match ComentarioJS /\/\/.*$/ contained containedin=CodigoJS
syn region ComentarioBloqueJS start=/\/\*/ end=/\*\// contained containedin=CodigoJS
syn match SignosJS /[-=;:+.,><?&|@$~\[\]\(\)]/ contained containedin=CodigoJS
syn match InterJS /[-=;:+.><?&|@$~]/ contained containedin=CodigoJS
syn region CadenaAJS start=/'/ end=/[^\\]*'/ contained containedin=CodigoJS
syn region CadenaCJS start=/"/ end=/[^\\]*"/ contained containedin=CodigoJS
hi ReservadasJS ctermfg=1
hi ComentarioJS cterm=italic ctermfg=8
hi ComentarioBloqueJS cterm=italic ctermfg=8
hi SignosJS ctermfg=5
hi InterJS ctermfg=5
hi CadenaAJS ctermfg=2
hi CadenaCJS ctermfg=2

" C
syn region CodigoC start=/^\s*c{{{/ end=/}}}$/

" Rust
syn region CodigoRust start=/^\s*\(rs\|rust\){{{/ end=/}}}$/

" Python
syn region CodigoPython start=/^\s*\(py\|python\){{{/ end=/}}}$/

" R
syn region CodigoR start=/^\s*r{{{/ end=/}}}$/

" Plano
syn region TextoPlano start=/^\s*txt{{{/ end=/}}}$/

" Paleta
syn match Paleta /\(  0[ ]\?  1[ ]\?  2[ ]\?  3[ ]\?  4[ ]\?  5[ ]\?  6[ ]\?  7\|  8[ ]\?  9[ ]\? 10[ ]\? 11[ ]\? 12[ ]\? 13[ ]\? 14[ ]\? 15\)/
syn match C0 /  0/ contained containedin=Paleta
syn match C1 /  1\(\d\)\@!/ contained containedin=Paleta
syn match C2 /  2/ contained containedin=Paleta
syn match C3 /  3/ contained containedin=Paleta
syn match C4 /  4/ contained containedin=Paleta
syn match C5 /  5/ contained containedin=Paleta
syn match C6 /  6/ contained containedin=Paleta
syn match C7 /  7/ contained containedin=Paleta
syn match C8 /  8/ contained containedin=Paleta
syn match C9 /  9/ contained containedin=Paleta
syn match C10 / 10/ contained containedin=Paleta
syn match C11 / 11/ contained containedin=Paleta
syn match C12 / 12/ contained containedin=Paleta
syn match C13 / 13/ contained containedin=Paleta
syn match C14 / 14/ contained containedin=Paleta
syn match C15 / 15/ contained containedin=Paleta
hi C0 ctermbg=0
hi C1 ctermbg=1
hi C2 ctermbg=2
hi C3 ctermbg=3
hi C4 ctermbg=4
hi C5 ctermbg=5
hi C6 ctermbg=6
hi C7 ctermbg=7
hi C8 ctermbg=8
hi C9 ctermbg=9
hi C10 ctermbg=10
hi C11 ctermbg=11
hi C12 ctermbg=12
hi C13 ctermbg=13
hi C14 ctermbg=14
hi C15 ctermbg=15
