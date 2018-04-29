module Basics = struct
  exception Error

  type token =
    | TWeakdef
    | TVersion
    | TVNum of string
    | TSemi
    | TRequires
    | TProvides
    | TOTHER of string
    | TIdent of string
    | TComma
    | TA_Shallow
    | TA_Pure
    | TA_Object_literal
    | TA_Mutator
    | TA_Mutable
    | TA_Const
    | RPARENT
    | LT
    | LPARENT
    | LE
    | GT
    | GE
    | EQ
    | EOL
    | EOF
end

include Basics

let _eRR = Basics.Error

type _menhir_env =
  { _menhir_lexer: Lexing.lexbuf -> token
  ; _menhir_lexbuf: Lexing.lexbuf
  ; _menhir_token: token
  ; mutable _menhir_error: bool }

and _menhir_state =
  | MenhirState46
  | MenhirState44
  | MenhirState35
  | MenhirState24
  | MenhirState22
  | MenhirState20
  | MenhirState14
  | MenhirState10
  | MenhirState3

let rec _menhir_goto_endline :
    _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_endline -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  match _menhir_s with
  | MenhirState14 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : 'freshtv175
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_version_) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_endline) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : 'freshtv173
                * _menhir_state
                * 'tv_separated_nonempty_list_TComma_version_) =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let (_4: 'tv_endline) : 'tv_endline = _v in
        ( let ( _menhir_stack
              , _
              , (l: 'tv_separated_nonempty_list_TComma_version_) ) =
            _menhir_stack
          in
          let _2 = () in
          let _1 = () in
          let _v : Jsoo_primitive.t = `Version (None, l) in
          _menhir_goto_annot _menhir_env _menhir_stack _v
        : 'freshtv174 )
      : 'freshtv176 )
  | MenhirState24 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : 'freshtv179
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_TIdent_) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_endline) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : 'freshtv177
                * _menhir_state
                * 'tv_separated_nonempty_list_TComma_TIdent_) =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let (_4: 'tv_endline) : 'tv_endline = _v in
        ( let ( _menhir_stack
              , _
              , (l: 'tv_separated_nonempty_list_TComma_TIdent_) ) =
            _menhir_stack
          in
          let _2 = () in
          let _1 = () in
          let _v : Jsoo_primitive.t = `Requires (None, l) in
          _menhir_goto_annot _menhir_env _menhir_stack _v
        : 'freshtv178 )
      : 'freshtv180 )
  | MenhirState46 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : (('freshtv183 * string) * 'tv_option_prim_annot_)
              * 'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__)
          =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_endline) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : (('freshtv181 * string) * 'tv_option_prim_annot_)
                * 'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__)
            =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let (_6: 'tv_endline) : 'tv_endline = _v in
        ( let ( ( (_menhir_stack, (id: string))
                , (opt: 'tv_option_prim_annot_) )
              , (args:
                  'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__)
              ) =
            _menhir_stack
          in
          let _2 = () in
          let _1 = () in
          let _v : Jsoo_primitive.t =
            `Provides
              ( None
              , id
              , (match opt with None -> `Mutator | Some k -> k)
              , args )
          in
          _menhir_goto_annot _menhir_env _menhir_stack _v
        : 'freshtv182 )
      : 'freshtv184 )
  | _ -> _menhir_fail ()

and _menhir_goto_separated_nonempty_list_TComma_arg_annot_ :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_separated_nonempty_list_TComma_arg_annot_
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  match _menhir_s with
  | MenhirState35 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_separated_nonempty_list_TComma_arg_annot_) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x: 'tv_separated_nonempty_list_TComma_arg_annot_)
              : 'tv_separated_nonempty_list_TComma_arg_annot_ =
          _v
        in
        ( let _v : 'tv_loption_separated_nonempty_list_TComma_arg_annot__ =
            x
          in
          _menhir_goto_loption_separated_nonempty_list_TComma_arg_annot__
            _menhir_env _menhir_stack _menhir_s _v
        : 'freshtv166 )
      : 'freshtv168 )
  | MenhirState44 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_arg_annot) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_separated_nonempty_list_TComma_arg_annot_) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_arg_annot) =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let (xs: 'tv_separated_nonempty_list_TComma_arg_annot_)
              : 'tv_separated_nonempty_list_TComma_arg_annot_ =
          _v
        in
        ( let _menhir_stack, _menhir_s, (x: 'tv_arg_annot) = _menhir_stack in
          let _2 = () in
          let _v : 'tv_separated_nonempty_list_TComma_arg_annot_ =
            x :: xs
          in
          _menhir_goto_separated_nonempty_list_TComma_arg_annot_ _menhir_env
            _menhir_stack _menhir_s _v
        : 'freshtv170 )
      : 'freshtv172 )
  | _ -> _menhir_fail ()

and _menhir_goto_separated_nonempty_list_TComma_version_ :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_separated_nonempty_list_TComma_version_
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = _menhir_stack, _menhir_s, _v in
  match _menhir_s with
  | MenhirState10 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ('freshtv161 * _menhir_state * 'tv_version)
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_version_) =
        Obj.magic _menhir_stack
      in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv159 * _menhir_state * 'tv_version)
                * _menhir_state
                * 'tv_separated_nonempty_list_TComma_version_) =
          Obj.magic _menhir_stack
        in
        ( let ( (_menhir_stack, _menhir_s, (x: 'tv_version))
              , _
              , (xs: 'tv_separated_nonempty_list_TComma_version_) ) =
            _menhir_stack
          in
          let _2 = () in
          let _v : 'tv_separated_nonempty_list_TComma_version_ = x :: xs in
          _menhir_goto_separated_nonempty_list_TComma_version_ _menhir_env
            _menhir_stack _menhir_s _v
        : 'freshtv160 )
      : 'freshtv162 )
  | MenhirState3 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : 'freshtv163
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_version_) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
              MenhirState14
        | EOL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
              MenhirState14
        | TOTHER _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
              MenhirState14 _v
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
              MenhirState14
      : 'freshtv164 )
  | _ -> _menhir_fail ()

and _menhir_fail : unit -> 'a =
 fun () ->
  Printf.fprintf Pervasives.stderr
    "Internal failure -- please contact the parser generator's developers.\n\
     %!" ;
  assert false

and _menhir_run15 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> string -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let (_1: string) : string = _v in
  ( let _v : 'tv_endline = failwith _1 in
    _menhir_goto_endline _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv158 )

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_endline = () in
    _menhir_goto_endline _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv156 )

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_endline = () in
    _menhir_goto_endline _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv154 )

and _menhir_goto_arg_annot :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_arg_annot
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = _menhir_stack, _menhir_s, _v in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_arg_annot) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TComma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_arg_annot) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | TA_Const ->
              _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
                MenhirState44
          | TA_Mutable ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
                MenhirState44
          | TA_Object_literal ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
                MenhirState44
          | TA_Shallow ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
                MenhirState44
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                MenhirState44
        : 'freshtv146 )
    | RPARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_arg_annot) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_stack, _menhir_s, (x: 'tv_arg_annot) = _menhir_stack in
          let _v : 'tv_separated_nonempty_list_TComma_arg_annot_ = [x] in
          _menhir_goto_separated_nonempty_list_TComma_arg_annot_ _menhir_env
            _menhir_stack _menhir_s _v
        : 'freshtv148 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_arg_annot) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv150 )
  : 'freshtv152 )

and _menhir_goto_op :
    _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_op -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = _menhir_stack, _menhir_s, _v in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_op) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TVNum _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_op) =
          Obj.magic _menhir_stack
        in
        let (_v : string) = _v in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_op) =
            Obj.magic _menhir_stack
          in
          let (_2: string) : string = _v in
          ( let _menhir_stack, _menhir_s, (_1: 'tv_op) = _menhir_stack in
            let _v : 'tv_version = _1, _2 in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_version) = _v in
            ( let _menhir_stack = _menhir_stack, _menhir_s, _v in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : 'freshtv133 * _menhir_state * 'tv_version) =
                Obj.magic _menhir_stack
              in
              ( assert (not _menhir_env._menhir_error) ;
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TComma ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack
                          : 'freshtv127 * _menhir_state * 'tv_version) =
                      Obj.magic _menhir_stack
                    in
                    ( let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | EQ ->
                          _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
                            MenhirState10
                      | GE ->
                          _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
                            MenhirState10
                      | GT ->
                          _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
                            MenhirState10
                      | LE ->
                          _menhir_run5 _menhir_env (Obj.magic _menhir_stack)
                            MenhirState10
                      | LT ->
                          _menhir_run4 _menhir_env (Obj.magic _menhir_stack)
                            MenhirState10
                      | _ ->
                          assert (not _menhir_env._menhir_error) ;
                          _menhir_env._menhir_error <- true ;
                          _menhir_errorcase _menhir_env
                            (Obj.magic _menhir_stack) MenhirState10
                    : 'freshtv128 )
                | EOF | EOL | TOTHER _ ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack
                          : 'freshtv129 * _menhir_state * 'tv_version) =
                      Obj.magic _menhir_stack
                    in
                    ( let _menhir_stack, _menhir_s, (x: 'tv_version) =
                        _menhir_stack
                      in
                      let _v : 'tv_separated_nonempty_list_TComma_version_ =
                        [x]
                      in
                      _menhir_goto_separated_nonempty_list_TComma_version_
                        _menhir_env _menhir_stack _menhir_s _v
                    : 'freshtv130 )
                | _ ->
                    assert (not _menhir_env._menhir_error) ;
                    _menhir_env._menhir_error <- true ;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack
                          : 'freshtv131 * _menhir_state * 'tv_version) =
                      Obj.magic _menhir_stack
                    in
                    ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
                      _menhir_errorcase _menhir_env
                        (Obj.magic _menhir_stack) _menhir_s
                    : 'freshtv132 )
              : 'freshtv134 )
            : 'freshtv136 )
          : 'freshtv138 )
        : 'freshtv140 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_op) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv142 )
  : 'freshtv144 )

and _menhir_goto_separated_nonempty_list_TComma_TIdent_ :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_separated_nonempty_list_TComma_TIdent_
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = _menhir_stack, _menhir_s, _v in
  match _menhir_s with
  | MenhirState22 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ('freshtv123 * _menhir_state * string)
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_TIdent_) =
        Obj.magic _menhir_stack
      in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv121 * _menhir_state * string)
                * _menhir_state
                * 'tv_separated_nonempty_list_TComma_TIdent_) =
          Obj.magic _menhir_stack
        in
        ( let ( (_menhir_stack, _menhir_s, (x: string))
              , _
              , (xs: 'tv_separated_nonempty_list_TComma_TIdent_) ) =
            _menhir_stack
          in
          let _2 = () in
          let _v : 'tv_separated_nonempty_list_TComma_TIdent_ = x :: xs in
          _menhir_goto_separated_nonempty_list_TComma_TIdent_ _menhir_env
            _menhir_stack _menhir_s _v
        : 'freshtv122 )
      : 'freshtv124 )
  | MenhirState20 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : 'freshtv125
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_TIdent_) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
              MenhirState24
        | EOL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
              MenhirState24
        | TOTHER _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
              MenhirState24 _v
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
              MenhirState24
      : 'freshtv126 )
  | _ -> _menhir_fail ()

and _menhir_goto_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__
    :
       _menhir_env
    -> 'ttv_tail
    -> 'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = _menhir_stack, _v in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : (('freshtv119 * string) * 'tv_option_prim_annot_)
          * 'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__)
      =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | EOL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TOTHER _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
          MenhirState46
  : 'freshtv120 )

and _menhir_goto_loption_separated_nonempty_list_TComma_arg_annot__ :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_loption_separated_nonempty_list_TComma_arg_annot__
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = _menhir_stack, _menhir_s, _v in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : 'freshtv117
          * _menhir_state
          * 'tv_loption_separated_nonempty_list_TComma_arg_annot__) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : 'freshtv113
                * _menhir_state
                * 'tv_loption_separated_nonempty_list_TComma_arg_annot__) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack
                : 'freshtv111
                  * _menhir_state
                  * 'tv_loption_separated_nonempty_list_TComma_arg_annot__) =
            Obj.magic _menhir_stack
          in
          ( let ( _menhir_stack
                , _
                , (xs00:
                    'tv_loption_separated_nonempty_list_TComma_arg_annot__)
                ) =
              _menhir_stack
            in
            let _30 = () in
            let _10 = () in
            let _v :
                'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__
                =
              let x =
                let _3 = _30 in
                let xs0 = xs00 in
                let _1 = _10 in
                let x =
                  let xs = xs0 in
                  xs
                in
                x
              in
              Some x
            in
            _menhir_goto_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__
              _menhir_env _menhir_stack _v
          : 'freshtv112 )
        : 'freshtv114 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : 'freshtv115
                * _menhir_state
                * 'tv_loption_separated_nonempty_list_TComma_arg_annot__) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv116 )
  : 'freshtv118 )

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_arg_annot = `Shallow_const in
    _menhir_goto_arg_annot _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv110 )

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_arg_annot = `Object_literal in
    _menhir_goto_arg_annot _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv108 )

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_arg_annot = `Mutable in
    _menhir_goto_arg_annot _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv106 )

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_arg_annot = `Const in
    _menhir_goto_arg_annot _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv104 )

and _menhir_goto_annot :
    _menhir_env -> 'ttv_tail -> Jsoo_primitive.t -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
  let (_v : Jsoo_primitive.t) = _v in
  ( let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
    let (_1: Jsoo_primitive.t) : Jsoo_primitive.t = _v in
    (Obj.magic _1 : 'freshtv100)
  : 'freshtv102 )

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_op = ( < ) in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv98 )

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_op = ( <= ) in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv96 )

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv93) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_op = ( > ) in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv94 )

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv91) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_op = ( >= ) in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv92 )

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_op = ( = ) in
    _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
  : 'freshtv90 )

and _menhir_errorcase :
    _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  match _menhir_s with
  | MenhirState46 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : (('freshtv71 * string) * 'tv_option_prim_annot_)
              * 'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__)
          =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv72)
  | MenhirState44 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_arg_annot) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
      : 'freshtv74 )
  | MenhirState35 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv75) = Obj.magic _menhir_stack in
      (raise _eRR : 'freshtv76)
  | MenhirState24 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : 'freshtv77
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_TIdent_) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
      : 'freshtv78 )
  | MenhirState22 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv79 * _menhir_state * string) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
      : 'freshtv80 )
  | MenhirState20 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
      (raise _eRR : 'freshtv82)
  | MenhirState14 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : 'freshtv83
              * _menhir_state
              * 'tv_separated_nonempty_list_TComma_version_) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
      : 'freshtv84 )
  | MenhirState10 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_version) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
      : 'freshtv86 )
  | MenhirState3 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
      (raise _eRR : 'freshtv88)

and _menhir_run21 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> string -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = _menhir_stack, _menhir_s, _v in
  let _menhir_env = _menhir_discard _menhir_env in
  let _tok = _menhir_env._menhir_token in
  match _tok with
  | TComma ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv65 * _menhir_state * string) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIdent _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
              MenhirState22 _v
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
              MenhirState22
      : 'freshtv66 )
  | EOF | EOL | TOTHER _ ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv67 * _menhir_state * string) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, (x: string) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_TComma_TIdent_ = [x] in
        _menhir_goto_separated_nonempty_list_TComma_TIdent_ _menhir_env
          _menhir_stack _menhir_s _v
      : 'freshtv68 )
  | _ ->
      assert (not _menhir_env._menhir_error) ;
      _menhir_env._menhir_error <- true ;
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv69 * _menhir_state * string) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
      : 'freshtv70 )

and _menhir_goto_option_prim_annot_ :
    _menhir_env -> 'ttv_tail -> 'tv_option_prim_annot_ -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = _menhir_stack, _v in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : ('freshtv63 * string) * 'tv_option_prim_annot_) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | TA_Const ->
              _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
                MenhirState35
          | TA_Mutable ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
                MenhirState35
          | TA_Object_literal ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
                MenhirState35
          | TA_Shallow ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
                MenhirState35
          | RPARENT ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState35 in
              ( let _v :
                    'tv_loption_separated_nonempty_list_TComma_arg_annot__ =
                  []
                in
                _menhir_goto_loption_separated_nonempty_list_TComma_arg_annot__
                  _menhir_env _menhir_stack _menhir_s _v
              : 'freshtv56 )
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                MenhirState35
        : 'freshtv58 )
    | EOF | EOL | TOTHER _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
        ( let _v :
              'tv_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__
              =
            None
          in
          _menhir_goto_option_delimited_LPARENT_separated_list_TComma_arg_annot__RPARENT__
            _menhir_env _menhir_stack _v
        : 'freshtv60 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * string) * 'tv_option_prim_annot_) =
          Obj.magic _menhir_stack
        in
        (raise _eRR : 'freshtv62)
  : 'freshtv64 )

and _menhir_goto_prim_annot :
    _menhir_env -> 'ttv_tail -> 'tv_prim_annot -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
  let (_v : 'tv_prim_annot) = _v in
  ( let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
    let (x: 'tv_prim_annot) : 'tv_prim_annot = _v in
    ( let _v : 'tv_option_prim_annot_ = Some x in
      _menhir_goto_option_prim_annot_ _menhir_env _menhir_stack _v
    : 'freshtv52 )
  : 'freshtv54 )

and _menhir_discard : _menhir_env -> _menhir_env =
 fun _menhir_env ->
  let lexer = _menhir_env._menhir_lexer in
  let lexbuf = _menhir_env._menhir_lexbuf in
  let _tok = lexer lexbuf in
  { _menhir_lexer= lexer
  ; _menhir_lexbuf= lexbuf
  ; _menhir_token= _tok
  ; _menhir_error= false }

and annot : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> Jsoo_primitive.t =
 fun lexer lexbuf ->
  let _menhir_env =
    let (lexer : Lexing.lexbuf -> token) = lexer in
    let (lexbuf : Lexing.lexbuf) = lexbuf in
    ( let _tok = Obj.magic () in
      { _menhir_lexer= lexer
      ; _menhir_lexbuf= lexbuf
      ; _menhir_token= _tok
      ; _menhir_error= false }
    : _menhir_env )
  in
  Obj.magic
    (let (_menhir_env : _menhir_env) = _menhir_env in
     let (_menhir_stack : 'freshtv49) =
       (), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
     in
     ( let _menhir_env = _menhir_discard _menhir_env in
       let _tok = _menhir_env._menhir_token in
       match _tok with
       | TProvides ->
           let (_menhir_env : _menhir_env) = _menhir_env in
           let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
           ( let _menhir_env = _menhir_discard _menhir_env in
             let _tok = _menhir_env._menhir_token in
             match _tok with
             | TSemi ->
                 let (_menhir_env : _menhir_env) = _menhir_env in
                 let (_menhir_stack : 'freshtv25) =
                   Obj.magic _menhir_stack
                 in
                 ( let _menhir_env = _menhir_discard _menhir_env in
                   let _tok = _menhir_env._menhir_token in
                   match _tok with
                   | TIdent _v ->
                       let (_menhir_env : _menhir_env) = _menhir_env in
                       let (_menhir_stack : 'freshtv21) =
                         Obj.magic _menhir_stack
                       in
                       let (_v : string) = _v in
                       ( let _menhir_stack = _menhir_stack, _v in
                         let _menhir_env = _menhir_discard _menhir_env in
                         let _tok = _menhir_env._menhir_token in
                         match _tok with
                         | TA_Const ->
                             let (_menhir_env : _menhir_env) =
                               _menhir_env
                             in
                             let (_menhir_stack : 'freshtv3) =
                               Obj.magic _menhir_stack
                             in
                             ( let _menhir_env =
                                 _menhir_discard _menhir_env
                               in
                               let (_menhir_env : _menhir_env) =
                                 _menhir_env
                               in
                               let (_menhir_stack : 'freshtv1) =
                                 Obj.magic _menhir_stack
                               in
                               ( let _1 = () in
                                 let _v : 'tv_prim_annot = `Pure in
                                 _menhir_goto_prim_annot _menhir_env
                                   _menhir_stack _v
                               : 'freshtv2 )
                             : 'freshtv4 )
                         | TA_Mutable ->
                             let (_menhir_env : _menhir_env) =
                               _menhir_env
                             in
                             let (_menhir_stack : 'freshtv7) =
                               Obj.magic _menhir_stack
                             in
                             ( let _menhir_env =
                                 _menhir_discard _menhir_env
                               in
                               let (_menhir_env : _menhir_env) =
                                 _menhir_env
                               in
                               let (_menhir_stack : 'freshtv5) =
                                 Obj.magic _menhir_stack
                               in
                               ( let _1 = () in
                                 let _v : 'tv_prim_annot = `Mutable in
                                 _menhir_goto_prim_annot _menhir_env
                                   _menhir_stack _v
                               : 'freshtv6 )
                             : 'freshtv8 )
                         | TA_Mutator ->
                             let (_menhir_env : _menhir_env) =
                               _menhir_env
                             in
                             let (_menhir_stack : 'freshtv11) =
                               Obj.magic _menhir_stack
                             in
                             ( let _menhir_env =
                                 _menhir_discard _menhir_env
                               in
                               let (_menhir_env : _menhir_env) =
                                 _menhir_env
                               in
                               let (_menhir_stack : 'freshtv9) =
                                 Obj.magic _menhir_stack
                               in
                               ( let _1 = () in
                                 let _v : 'tv_prim_annot = `Mutator in
                                 _menhir_goto_prim_annot _menhir_env
                                   _menhir_stack _v
                               : 'freshtv10 )
                             : 'freshtv12 )
                         | TA_Pure ->
                             let (_menhir_env : _menhir_env) =
                               _menhir_env
                             in
                             let (_menhir_stack : 'freshtv15) =
                               Obj.magic _menhir_stack
                             in
                             ( let _menhir_env =
                                 _menhir_discard _menhir_env
                               in
                               let (_menhir_env : _menhir_env) =
                                 _menhir_env
                               in
                               let (_menhir_stack : 'freshtv13) =
                                 Obj.magic _menhir_stack
                               in
                               ( let _1 = () in
                                 let _v : 'tv_prim_annot = `Pure in
                                 _menhir_goto_prim_annot _menhir_env
                                   _menhir_stack _v
                               : 'freshtv14 )
                             : 'freshtv16 )
                         | EOF | EOL | LPARENT | TOTHER _ ->
                             let (_menhir_env : _menhir_env) =
                               _menhir_env
                             in
                             let (_menhir_stack : 'freshtv17) =
                               Obj.magic _menhir_stack
                             in
                             ( let _v : 'tv_option_prim_annot_ = None in
                               _menhir_goto_option_prim_annot_ _menhir_env
                                 _menhir_stack _v
                             : 'freshtv18 )
                         | _ ->
                             assert (not _menhir_env._menhir_error) ;
                             _menhir_env._menhir_error <- true ;
                             let (_menhir_env : _menhir_env) =
                               _menhir_env
                             in
                             let (_menhir_stack : 'freshtv19 * string) =
                               Obj.magic _menhir_stack
                             in
                             (raise _eRR : 'freshtv20)
                       : 'freshtv22 )
                   | _ ->
                       assert (not _menhir_env._menhir_error) ;
                       _menhir_env._menhir_error <- true ;
                       let (_menhir_env : _menhir_env) = _menhir_env in
                       let (_menhir_stack : 'freshtv23) =
                         Obj.magic _menhir_stack
                       in
                       (raise _eRR : 'freshtv24)
                 : 'freshtv26 )
             | _ ->
                 assert (not _menhir_env._menhir_error) ;
                 _menhir_env._menhir_error <- true ;
                 let (_menhir_env : _menhir_env) = _menhir_env in
                 let (_menhir_stack : 'freshtv27) =
                   Obj.magic _menhir_stack
                 in
                 (raise _eRR : 'freshtv28)
           : 'freshtv30 )
       | TRequires ->
           let (_menhir_env : _menhir_env) = _menhir_env in
           let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
           ( let _menhir_env = _menhir_discard _menhir_env in
             let _tok = _menhir_env._menhir_token in
             match _tok with
             | TSemi ->
                 let (_menhir_env : _menhir_env) = _menhir_env in
                 let (_menhir_stack : 'freshtv31) =
                   Obj.magic _menhir_stack
                 in
                 ( let _menhir_env = _menhir_discard _menhir_env in
                   let _tok = _menhir_env._menhir_token in
                   match _tok with
                   | TIdent _v ->
                       _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
                         MenhirState20 _v
                   | _ ->
                       assert (not _menhir_env._menhir_error) ;
                       _menhir_env._menhir_error <- true ;
                       _menhir_errorcase _menhir_env
                         (Obj.magic _menhir_stack) MenhirState20
                 : 'freshtv32 )
             | _ ->
                 assert (not _menhir_env._menhir_error) ;
                 _menhir_env._menhir_error <- true ;
                 let (_menhir_env : _menhir_env) = _menhir_env in
                 let (_menhir_stack : 'freshtv33) =
                   Obj.magic _menhir_stack
                 in
                 (raise _eRR : 'freshtv34)
           : 'freshtv36 )
       | TVersion ->
           let (_menhir_env : _menhir_env) = _menhir_env in
           let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
           ( let _menhir_env = _menhir_discard _menhir_env in
             let _tok = _menhir_env._menhir_token in
             match _tok with
             | TSemi ->
                 let (_menhir_env : _menhir_env) = _menhir_env in
                 let (_menhir_stack : 'freshtv37) =
                   Obj.magic _menhir_stack
                 in
                 ( let _menhir_env = _menhir_discard _menhir_env in
                   let _tok = _menhir_env._menhir_token in
                   match _tok with
                   | EQ ->
                       _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
                         MenhirState3
                   | GE ->
                       _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
                         MenhirState3
                   | GT ->
                       _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
                         MenhirState3
                   | LE ->
                       _menhir_run5 _menhir_env (Obj.magic _menhir_stack)
                         MenhirState3
                   | LT ->
                       _menhir_run4 _menhir_env (Obj.magic _menhir_stack)
                         MenhirState3
                   | _ ->
                       assert (not _menhir_env._menhir_error) ;
                       _menhir_env._menhir_error <- true ;
                       _menhir_errorcase _menhir_env
                         (Obj.magic _menhir_stack) MenhirState3
                 : 'freshtv38 )
             | _ ->
                 assert (not _menhir_env._menhir_error) ;
                 _menhir_env._menhir_error <- true ;
                 let (_menhir_env : _menhir_env) = _menhir_env in
                 let (_menhir_stack : 'freshtv39) =
                   Obj.magic _menhir_stack
                 in
                 (raise _eRR : 'freshtv40)
           : 'freshtv42 )
       | TWeakdef ->
           let (_menhir_env : _menhir_env) = _menhir_env in
           let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
           ( let (_menhir_env : _menhir_env) = _menhir_env in
             let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
             ( let _1 = () in
               let _v : Jsoo_primitive.t = `Weakdef None in
               _menhir_goto_annot _menhir_env _menhir_stack _v
             : 'freshtv44 )
           : 'freshtv46 )
       | _ ->
           assert (not _menhir_env._menhir_error) ;
           _menhir_env._menhir_error <- true ;
           let (_menhir_env : _menhir_env) = _menhir_env in
           let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
           (raise _eRR : 'freshtv48)
     : 'freshtv50 ))
