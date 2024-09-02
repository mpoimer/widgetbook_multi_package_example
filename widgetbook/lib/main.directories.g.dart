// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_example/app/widgets/elevated_loading_button.dart'
    as _i2;

import '../../main_app/lib/app/widgets/outlined_loading_button.dart' as _i3;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'app',
    children: [
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookComponent(
            name: 'ElevatedLoadingButton',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'ElevatedLoadingButton Loaded State',
                builder: _i2.loadingButtonLoaded,
              ),
              _i1.WidgetbookUseCase(
                name: 'ElevatedLoadingButton Loading State',
                builder: _i2.loadingButtonLoading,
              ),
            ],
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'main_app',
    children: [
      _i1.WidgetbookFolder(
        name: 'lib',
        children: [
          _i1.WidgetbookFolder(
            name: 'app',
            children: [
              _i1.WidgetbookFolder(
                name: 'widgets',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'OutlinedLoadingButton',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'OutlinedLoadingButton Loaded State',
                      builder: _i3.outlinedLoadingButtonLoaded,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )
    ],
  ),
];
