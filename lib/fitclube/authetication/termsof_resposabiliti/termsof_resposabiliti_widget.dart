import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termsof_resposabiliti_model.dart';
export 'termsof_resposabiliti_model.dart';

class TermsofResposabilitiWidget extends StatefulWidget {
  const TermsofResposabilitiWidget({super.key});

  @override
  State<TermsofResposabilitiWidget> createState() =>
      _TermsofResposabilitiWidgetState();
}

class _TermsofResposabilitiWidgetState
    extends State<TermsofResposabilitiWidget> {
  late TermsofResposabilitiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsofResposabilitiModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Text(
                  'Termos de Uso e Privacidade',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFFF7400),
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'TERMOS DE USO — Jorge Fernando Tecnologia\nEsta política de Termos de Uso é válida a partir de Jun 2024.\nJorge Fernando Tecnologia, pessoa jurídica de direito privado descreve, através deste documento, as regras de uso do aplicativo Jorge Fernando Tecnologia e qualquer outro aplicativo operado pelo proprietário.\nAo utilizar este aplicativo, consideramos que você está de acordo com os Termos de Uso abaixo.\nCaso você não esteja de acordo com as condições deste contrato, pedimos que não faça mais uso deste aplicativo, muito menos cadastre-se ou envie os seus dados pessoais.\nSe modificarmos nossos Termos de Uso, publicaremos o novo texto neste aplicativo, com a data de revisão atualizada. Podemos alterar este documento a qualquer momento. Caso haja alteração significativa nos termos deste contrato, podemos informá-lo por meio das informações de contato que tivermos em nosso banco de dados ou por meio de notificações.\nA utilização deste aplicativo após as alterações significa que você aceitou os Termos de Uso revisados. Caso, após a leitura da versão revisada, você não esteja de acordo com seus termos, favor encerrar o seu acesso.\nSeção 1 - Usuário\nA utilização deste aplicativo atribui de forma automática a condição de Usuário e implica a plena aceitação de todas as diretrizes e condições incluídas nestes Termos.\nSeção 2 - Adesão em conjunto com a Política de Privacidade\nA utilização deste aplicativo acarreta a adesão aos presentes Termos de Uso e a versão mais atualizada da Política de Privacidade de Jorge Fernando Tecnologia.\nSeção 3 - Condições de acesso\nEm geral, o acesso ao aplicativo da Jorge Fernando Tecnologia possui caráter gratuito e não exige prévia inscrição ou registro.\nContudo, para usufruir de algumas funcionalidades, o usuário poderá precisar efetuar um cadastro, criando uma conta de usuário com login e senha próprios para acesso.\nÉ de total responsabilidade do usuário fornecer apenas informações corretas, autênticas, válidas, completas e atualizadas, bem como não divulgar o seu login e senha para terceiros.\nPartes deste aplicativo oferecem ao usuário a opção de publicar comentários em determinadas áreas. Jorge Fernando Tecnologia não consente com a publicação de conteúdos que tenham natureza discriminatória, ofensiva ou ilícita, ou ainda infrinjam direitos de autor ou quaisquer outros direitos de terceiros.\nA publicação de quaisquer conteúdos pelo usuário deste aplicativo, incluindo mensagens e comentários, implica em licença não-exclusiva, irrevogável e irretratável, para sua utilização, reprodução e publicação pela Jorge Fernando Tecnologia no seu aplicativo, plataformas e aplicações de internet, ou ainda em outras plataformas, sem qualquer restrição ou limitação.\nSeção 4 - Coleta de Dados e Tecnologias de Rastreamento\nInformações sobre o seu uso neste aplicativo podem ser coletadas usando várias tecnologias. O aplicativo pode coletar e analisar informações como o tipo de dispositivo que você está usando, o ID exclusivo do seu dispositivo, o endereço IP do seu dispositivo, seu sistema operacional, o tipo de navegador de Internet que você usa, informações de uso, informações de diagnóstico, informações de navegação, informações de resumo da sessão, atributos de arquivo (como tamanho, tipo, hash etc.), e outros dados técnicos sobre seu dispositivo, sistema e software de aplicativo e periféricos.\nEssa coleta pode ocorrer automaticamente sempre que você usar o aplicativo. Além disso, quando você baixa e usa o aplicativo, podemos rastrear e coletar dados de uso do aplicativo, como a data e hora em que o aplicativo em seu dispositivo acessa nossos servidores e quais informações e arquivos foram baixados para o aplicativo com base no número do seu dispositivo.\nNós e nossos prestadores de serviços utilizamos essas informações para proteção de segurança, para facilitar a navegação, exibir informações de modo mais eficiente, e personalizar sua experiência ao utilizar este aplicativo. Também coletamos informações estatísticas sobre o uso do aplicativo para aprimoramento contínuo do nosso design e funcionalidade, entender como o aplicativo é utilizado e auxiliá-lo a solucionar questões relevantes.\nSe você não deseja que coletemos essas informações, você pode desativar muitos desses mecanismos de coleta nas configurações do dispositivo. No entanto, isso pode afetar sua experiência de uso e o funcionamento de certas funcionalidades do aplicativo. Consulte as configurações do seu dispositivo ou entre em contato conosco para mais informações sobre como gerenciar a coleta de dados no aplicativo.\nSeção 5 - Propriedade Intelectual\nTodos os elementos de Jorge Fernando Tecnologia são de propriedade intelectual da mesma ou de seus licenciados. Estes Termos ou a utilização do aplicativo não concede a você qualquer licença ou direito de uso dos direitos de propriedade intelectual da Jorge Fernando Tecnologia ou de terceiros.\nSeção 6 - Links para sites de terceiros\nEste aplicativo poderá, de tempos a tempos, conter links que redirecionará você para sites das redes dos nossos parceiros, anunciantes, fornecedores etc. Se você clicar em um desses links para qualquer um desses sites, lembre-se que cada site possui as suas próprias práticas de privacidade e que não somos responsáveis por essas políticas. Consulte as referidas políticas antes de enviar quaisquer Dados Pessoais para esses sites.\nNão nos responsabilizamos pelas políticas e práticas de coleta, uso e divulgação (incluindo práticas de proteção de dados) de outras organizações, tais como Facebook, Apple, Google, Microsoft, ou de qualquer outro desenvolvedor de software ou provedor de aplicativo, loja de mídia social, sistema operacional, prestador de serviços de internet sem fio ou fabricante de dispositivos, incluindo todos os Dados Pessoais que divulgar para outras organizações por meio dos aplicativos, relacionadas a tais aplicativos, ou publicadas em nossas páginas em mídias sociais. Nós recomendamos que você se informe sobre a política de privacidade e termos de uso de cada site visitado ou de cada prestador de serviço utilizado.\nSeção 7 - Prazos e alterações\nO funcionamento deste aplicativo se dá por prazo indeterminado.\nO aplicativo no todo ou em cada uma das suas seções, pode ser encerrado, suspenso ou interrompido unilateralmente por Jorge Fernando Tecnologia, a qualquer momento e sem necessidade de prévio aviso.\nSeção 8 - Dados pessoais\nDurante a utilização deste aplicativo, certos dados pessoais serão coletados e tratados por Jorge Fernando Tecnologia e/ou pelos Parceiros. As regras relacionadas ao tratamento de dados pessoais de Jorge Fernando Tecnologia estão estipuladas na Política de Privacidade.\nSeção 9 - Contato\nCaso você tenha qualquer dúvida sobre os Termos de Uso, por favor, entre em contato pelo e-mail contato@waketecnologia.com.\nÚltima atualização: Jun 2024.\n\nPolítica de Privacidade\nA Jorge Fernando Tecnologia, pessoa jurídica de direito privado, com sede na R Oswaldo Campos do Amaral, N:1080, FERNANDES, Santa Rita do Sapucai, inscrita no CNPJ/MF sob o nº (\"Lojista\" ou \"nós\") leva a sua privacidade a sério e zela pela segurança e proteção de dados de todos os seus clientes, parceiros, fornecedores e usuários (\"Usuários\" ou \"você\") do aplicativo Jorge Fernando Tecnologia e qualquer outro aplicativo operado pelo Lojista (aqui designados, simplesmente, \"Aplicativo\").\nEsta Política de Privacidade (\"Política de Privacidade\") destina-se a informá-lo sobre o modo como nós utilizamos e divulgamos informações coletadas em suas visitas ao nosso Aplicativo e em mensagens que trocamos com você (\"Comunicações\").\nAO ACESSAR O APLICATIVO, ENVIAR COMUNICAÇÕES OU FORNECER QUALQUER TIPO DE DADO PESSOAL, VOCÊ DECLARA ESTAR CIENTE E DE ACORDO COM ESTA POLÍTICA DE PRIVACIDADE, A QUAL DESCREVE AS FINALIDADES E FORMAS DE TRATAMENTO DE SEUS DADOS PESSOAIS QUE VOCÊ DISPONIBILIZAR NO APLICATIVO.\nEsta Política de Privacidade fornece uma visão geral de nossas práticas de privacidade e das escolhas que você pode fazer, bem como direitos que você pode exercer em relação aos Dados Pessoais tratados por nós. Se você tiver alguma dúvida sobre o uso de Dados Pessoais, entre em contato com contato@waketecnologia.com.\nAlém disso, a Política de Privacidade não se aplica a quaisquer aplicativos, produtos, serviços, site ou recursos de mídia social de terceiros que possam ser oferecidos ou acessados por meio do Aplicativo. O acesso a esses links fará com que você deixe nosso Aplicativo e possa resultar na coleta ou compartilhamento de informações sobre você por terceiros. Nós não controlamos, endossamos ou fazemos quaisquer representações sobre esses aplicativos de terceiros ou suas práticas de privacidade, que podem ser diferentes das nossas. Recomendamos que você revise a política de privacidade de qualquer aplicativo com o qual você interaja antes de permitir a coleta e o uso de seus Dados Pessoais.\nCaso você nos envie Dados Pessoais referentes a outras pessoas físicas, você declara ter a competência para fazê-lo e declara ter obtido o consentimento necessário para autorizar o uso de tais informações nos termos desta Política de Privacidade.\nDefinições\nPara os fins desta Política de Privacidade:\n\n\"Dados Pessoais\" significa qualquer informação que, direta ou indiretamente, identifique ou possa identificar uma pessoa natural, como por exemplo, nome, CPF, data de nascimento, endereço IP, dentre outros;\n\"Dados Pessoais Sensíveis\" significa qualquer informação que revele, em relação a uma pessoa natural, origem racial ou étnica, convicção religiosa, opinião política, filiação a sindicato ou a organização de caráter religioso, filosófico ou político, dado referente à saúde ou à vida sexual, dado genético ou biométrico;\n\"Tratamento de Dados Pessoais\" significa qualquer operação efetuada no âmbito dos Dados Pessoais, por meio de meios automáticos ou não, tal como a recolha, gravação, organização, estruturação, armazenamento, adaptação ou alteração, recuperação, consulta, utilização, divulgação por transmissão, disseminação ou, alternativamente, disponibilização, harmonização ou associação, restrição, eliminação ou destruição. Também é considerado Tratamento de Dados Pessoais qualquer outra operação prevista nos termos da legislação aplicável;\n\"Leis de Proteção de Dados\" significa todas as disposições legais que regulem o Tratamento de Dados Pessoais, incluindo, porém sem se limitar, a Lei nº 13.709/18, Lei Geral de Proteção de Dados Pessoais (\"LGPD\").\n\nUso de Dados Pessoais\nColetamos e usamos Dados Pessoais para gerenciar seu relacionamento conosco e melhor atendê-lo quando você estiver utilizando nossos produtos e/ou serviços no Aplicativo, personalizando e melhorando sua experiência. Exemplos de como usamos os dados incluem:\n\nViabilizar que você utilize produtos e/ou serviços no Aplicativo;\nPara confirmar ou corrigir as informações que temos sobre você;\nPara enviar informações que acreditamos ser do seu interesse;\nPara personalizar sua experiência de uso do Aplicativo;\nPara personalizar o envio de publicidades para você, baseada em seu interesse em nosso Aplicativo; e\nPara entrarmos em contato por um número de telefone e/ou endereço de e-mail fornecido. Podemos entrar em contato com você pessoalmente, por mensagem de voz, através de equipamentos de discagem automática, por mensagens de texto (SMS), por e-mail, ou por qualquer outro meio de comunicação que seu dispositivo seja capaz de receber, nos termos da lei e para fins comerciais razoáveis.\n\nAlém disso, os Dados Pessoais fornecidos também podem ser utilizados na forma que julgarmos necessária ou adequada: (a) nos termos das Leis de Proteção de Dados; (b) para atender exigências de processo judicial; (c) para cumprir decisão judicial, decisão regulatória ou decisão de autoridades competentes, incluindo autoridades fora do país de residência; (d) para proteger nossas operações; (e) para proteger direitos, privacidade, segurança nossos, seus ou de terceiros; (f) para detectar e prevenir fraude; (g) permitir-nos usar as ações disponíveis ou limitar danos que venhamos a sofrer; (h) de outros modos permitidos por lei.\nO NOSSO APLICATIVO NÃO SE DESTINA A PESSOAS COM MENOS DE 18 (DEZOITO) ANOS E PEDIMOS QUE TAIS PESSOAS NÃO NOS FORNEÇAM QUALQUER DADO PESSOAL.\nNão fornecimento de Dados Pessoais\nVocê não é obrigado a compartilhar os Dados Pessoais que solicitamos, no entanto, se você optar por não os compartilhar, em alguns casos, não poderemos fornecer a você acesso completo ao Aplicativo, alguns recursos especializados ou ser capaz de prestar a assistência necessária ou, ainda, viabilizar a entrega do produto ou prestar o serviço contratado por você.\nDados coletados\nO público em geral poderá navegar no Aplicativo sem necessidade de qualquer cadastro e envio de Dados Pessoais. No entanto, algumas das funcionalidades do Aplicativo poderão depender de cadastro e envio de Dados Pessoais como concluir a compra/contratação do serviço e/ou a viabilizar a entrega do produto/prestação do serviço por nós.\nNo contato o Aplicativo, nós podemos coletar:\n\nDados de contato. Nome, sobrenome, número de telefone, cidade, Estado e endereço de e-mail; e\nInformações que você envia. Informações que você envia via formulário (dúvidas, reclamações, sugestões, críticas, elogios etc.).\n\nNa navegação geral no Aplicativo, nós poderemos coletar:\n\nDados de localização. Dados de geolocalização quando você acessa o Aplicativo;\nPreferências. Informações sobre suas preferências e interesses em relação aos produtos/serviços (quando você nos diz o que eles são ou quando os deduzimos do que sabemos sobre você);\nDados de uso do Aplicativo. Informações',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Color(0xFFFF7400),
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.keyboard_double_arrow_left,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                                Text(
                                  'Voltar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
