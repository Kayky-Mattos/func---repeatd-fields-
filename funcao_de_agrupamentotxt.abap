FUNCTION zkayky_testes.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(I_TB_ENTRADA) TYPE  Z_TY_ENTRADA OPTIONAL
*"     REFERENCE(I_TB_CONFIG) TYPE  Z_TY_CONFIG OPTIONAL
*"  EXPORTING
*"     REFERENCE(SUBRC) TYPE  SY-SUBRC
*"     REFERENCE(E_TB_SAIDA) TYPE  Z_TY_SAIDA
*"----------------------------------------------------------------------

  DATA: wa_entrada TYPE zentrada_st,

        it_config  TYPE z_ty_config,
        wa_config  TYPE zconfig_st,

        it_saida   TYPE z_ty_saida,
        wa_saida   TYPE zsaida_st.

  LOOP AT i_tb_entrada INTO wa_entrada.
    READ TABLE i_tb_config INTO wa_config INDEX 1.
    IF Sy-subrc = 0.
      ASSIGN COMPONENT wa_config-agr1 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_agr1>).
      IF sy-subrc = 0.
        wa_saida-pedidoapp = <lfs_agr1>.
      ENDIF.

      ASSIGN COMPONENT wa_config-agr2 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_agr2>).
      IF sy-subrc = 0.
        wa_saida-cod_cliente = <lfs_agr2>.
      ENDIF.

      ASSIGN COMPONENT wa_config-agr3 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_agr3>).
      IF sy-subrc = 0.
        wa_saida-data_entrega = <lfs_agr3>.
      ENDIF.

      ASSIGN COMPONENT wa_config-agr4 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_agr4>).
      IF sy-subrc = 0.
        wa_saida-status_pedido = <lfs_agr4>.
      ENDIF.

      ASSIGN COMPONENT wa_config-agr5 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_agr5>).
      IF sy-subrc = 0.
        wa_saida-varejista = <lfs_agr5>.
      ENDIF.

      ASSIGN COMPONENT wa_config-agr6 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_agr6>).
      IF sy-subrc = 0.
        wa_saida-nome_loja = <lfs_agr6>.
      ENDIF.

      ASSIGN COMPONENT wa_config-agr7 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_agr7>).
      IF sy-subrc = 0.
        wa_saida-n_pedido_varejista = <lfs_agr7>.
      ENDIF.

      ASSIGN COMPONENT wa_config-val1 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_val1>).
      IF sy-subrc = 0.
        wa_saida-quantidade_pedida = <lfs_val1>.
      ENDIF.

      ASSIGN COMPONENT wa_config-val2 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_val2>).
      IF sy-subrc = 0.
        wa_saida-quantidade_faturada = <lfs_val2>.
      ENDIF.

      ASSIGN COMPONENT wa_config-val3 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_val3>).
      IF sy-subrc = 0.
        wa_saida-quantidade_kg = <lfs_val3>.
      ENDIF.

      ASSIGN COMPONENT wa_config-val4 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_val4>).
      IF sy-subrc = 0.
        wa_saida-quantidade_cx = <lfs_val4>.
      ENDIF.

      ASSIGN COMPONENT wa_config-val5 OF STRUCTURE wa_entrada TO FIELD-SYMBOL(<lfs_val5>).
      IF sy-subrc = 0.
        wa_saida-quantidade_devolucao = <lfs_val5>.
      ENDIF.

    ENDIF.
    COLLECT wa_saida INTO e_tb_saida.
  ENDLOOP.






ENDFUNCTION.