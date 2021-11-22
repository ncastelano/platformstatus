import 'package:flutter/material.dart';

class OpcaodePagina extends StatelessWidget {
  //final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Icon(
        Icons.star,
        color: Colors.blue,size: 100,
      ),
        Icon(
          Icons.photo_camera,
          color: Colors.blue,size: 100,
        ),
        Icon(
          Icons.library_music,
          color: Colors.blue,size: 100,
        ),
        Icon(
          Icons.video_collection_outlined,
          color: Colors.blue,size: 100,
        ),
        Icon(
          Icons.menu_book,
          color: Colors.blue,size: 100,
        ),
        Icon(
          Icons.store,
          color: Colors.blue,size: 100,
        ),
        Icon(
          Icons.location_on,
          color: Colors.blue,size: 100,
        ),
        Icon(
          Icons.chat,
          color: Colors.blue,size: 100,
        ),
        Icon(
          Icons.download_outlined,
          color: Colors.blue,
          size: 100,
        ),
        Icon(
          Icons.settings,
          color: Colors.blue,
          size: 100,
        ),

        /*
        Container(

          width: 48.0,
          height: 48.0,
          child: TitulodePagina(
            label: 'Social',
            iconData: Icons.person,
            onTap: () {
            },
            highlighted: true,
          ),
        ),
        TitulodePagina(
          label: 'Som',
          iconData: Icons.music_video,
          onTap: () {
          },
          highlighted: false,
        ),
        TitulodePagina(
          label: 'Video',
          iconData: Icons.ondemand_video,
          onTap: () {
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Live',
          iconData: Icons.live_tv,
          onTap: () {
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Estações',
          iconData: Icons.radio,
          onTap: () {
            //pageStore.setPage(4);
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Livro',
          iconData: Icons.menu_book,
          onTap: () {
            //pageStore.setPage(5);
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Loja',
          iconData: Icons.store,
          onTap: () {
            //pageStore.setPage(6);
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Mapa',
          iconData: Icons.location_on,
          onTap: () {
            //pageStore.setPage(7);
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Carteira',
          iconData: Icons.attach_money,
          onTap: () {
            //pageStore.setPage(8);
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Downloads',
          iconData: Icons.cloud_download_sharp,
          onTap: () {
            //pageStore.setPage(9);
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Diálogos',
          iconData: Icons.chat,
          onTap: () {
            //pageStore.setPage(10);
          },
          highlighted: true,
        ),
        TitulodePagina(
          label: 'Configuração',
          iconData: Icons.settings,
          onTap: () {
            //pageStore.setPage(11);
          },
          highlighted: true,
        ),
      */
      ],
    );
  }
}
