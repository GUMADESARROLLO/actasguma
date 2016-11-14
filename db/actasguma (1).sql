-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2016 a las 17:40:27
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actasguma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actasguma`
--

CREATE TABLE `actasguma` (
  `id_acta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `objetivos` text COLLATE utf8_unicode_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  `pendientes_anteriores` text COLLATE utf8_unicode_ci NOT NULL,
  `avances_actividades` text COLLATE utf8_unicode_ci NOT NULL,
  `acuerdos` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actasguma`
--

INSERT INTO `actasguma` (`id_acta`, `fecha`, `objetivos`, `id_empresa`, `id_lugar`, `pendientes_anteriores`, `avances_actividades`, `acuerdos`) VALUES
(1, '2016-11-14', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris urna diam, dictum quis feugiat non, pellentesque a dui. In feugiat, dolor nec ornare vulputate, magna risus lacinia sem, ut sollicitudin dolor lectus quis nunc. Aenean imperdiet suscipit mi, in faucibus nisi consectetur scelerisque. Morbi suscipit lectus vel mattis maximus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Etiam arcu justo, porttitor sit amet iaculis id, porta ac ipsum. Donec vitae nibh non dolor consectetur vulputate. Aenean sit amet tellus eget ex lacinia tempus nec eget tortor.</p>\r\n<p style="text-align: justify;">Aenean eget odio quam. Praesent in ex finibus dolor luctus gravida. Quisque at elit eu risus porttitor placerat. Pellentesque mauris lorem, feugiat a eleifend sed, dapibus quis dolor. In venenatis purus mauris, nec aliquam diam scelerisque vitae. Sed volutpat a mauris eget dictum. Suspendisse imperdiet eros nisl, ut suscipit velit maximus ut. Aliquam facilisis, ipsum sed finibus fermentum, risus nibh bibendum libero, tincidunt malesuada nunc ante egestas magna.</p>\r\n<p style="text-align: justify;">In hac habitasse platea dictumst. Proin nec quam ac elit finibus suscipit sed id diam. In congue, lectus consectetur convallis consectetur, tellus ligula pharetra dui, vel tempus augue elit nec tellus. Nunc mollis odio quis augue ultricies, quis interdum mi consequat. Integer laoreet, ligula vel consectetur finibus, erat arcu pretium dui, ut vestibulum tellus arcu nec leo. Fusce rutrum nunc ac turpis efficitur dignissim. Donec nibh urna, laoreet sed sollicitudin ut, cursus quis eros. Sed tempor aliquam blandit. Morbi tempus volutpat turpis id vehicula. Ut in laoreet massa, volutpat fermentum nisi.</p>\r\n<p style="text-align: justify;">Phasellus accumsan malesuada ultrices. Duis scelerisque eleifend nibh, sed pulvinar tellus sodales a. Pellentesque rhoncus vel arcu vel ultrices. Suspendisse pharetra dapibus urna ac viverra. Fusce eu blandit ligula. Quisque sit amet mauris neque. Curabitur suscipit, nisl sodales ullamcorper accumsan, nunc nibh scelerisque orci, eu euismod metus magna nec quam. Nam ut eros nunc. Suspendisse augue nulla, porta id tincidunt sed, dapibus a erat.</p>\r\n<p style="text-align: justify;">Integer in dolor turpis. Nam facilisis mi a felis cursus, a imperdiet urna rhoncus. Vestibulum magna nisl, porttitor ut egestas vitae, aliquet vel ante. Phasellus sed urna vel felis feugiat volutpat commodo sit amet enim. Donec pulvinar nulla eu lacinia sollicitudin. Maecenas facilisis eleifend nulla eu lacinia. Sed nunc nunc, accumsan sit amet velit at, laoreet dignissim nisl. Nunc vestibulum tellus mi, eget tincidunt mi convallis eu. Aliquam quis nibh tristique arcu maximus sagittis et at diam. Praesent vel ante congue, viverra ante non, elementum neque.</p>', 5, 1, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae felis id est condimentum dapibus. Proin lacinia elementum ligula vel mattis. Duis enim augue, tempor quis porta sed, egestas convallis tellus. Donec diam est, faucibus feugiat dui vel, tempus tincidunt ante. Morbi gravida tincidunt pellentesque. Vestibulum commodo, libero ut facilisis vehicula, diam tellus fringilla est, eu eleifend magna lorem vel massa. Duis ullamcorper eget libero id molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam hendrerit suscipit massa a tempus. Morbi cursus tempus diam, ut gravida orci consequat sagittis. Integer feugiat nisl at enim lobortis, ut faucibus lectus aliquam. Nunc dignissim est vitae fermentum bibendum. Praesent elementum ante ipsum, sed sodales nisi blandit aliquet. Donec aliquet auctor scelerisque.</p>\r\n<p style="text-align: justify;">Quisque ornare magna ut elementum placerat. Vivamus egestas ornare dolor id dignissim. Maecenas tellus urna, feugiat eget pharetra sit amet, maximus vitae massa. Proin ut maximus diam, eget volutpat ante. Duis fringilla feugiat interdum. Nullam rhoncus quam a tellus fermentum tristique. Curabitur scelerisque turpis et risus fringilla rutrum a non augue. Aliquam a tellus euismod, pretium urna dictum, maximus ex. Donec ac libero eget odio sagittis suscipit vitae eu urna.</p>\r\n<p style="text-align: justify;">Phasellus ultricies, lorem ut tempor lobortis, lectus massa elementum lectus, id mattis dolor nibh vel tortor. Curabitur sollicitudin metus vel ipsum faucibus, ac accumsan diam tempor. Duis finibus neque arcu, non mattis diam pharetra ac. Aliquam scelerisque quam purus, sit amet rutrum felis dictum elementum. Cras feugiat leo quis massa consequat, eu semper quam interdum. Vivamus ultricies vel nulla ac tempus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam sit amet suscipit diam, nec pellentesque ipsum. Quisque nec nisl non lacus pulvinar varius.</p>\r\n<p style="text-align: justify;">Sed sed dui ut quam varius auctor id id metus. Nulla malesuada eget nisl ac lobortis. Ut suscipit semper nulla nec tincidunt. Nullam consequat dolor et est malesuada convallis. Phasellus varius, augue at eleifend consequat, tellus dui sollicitudin nisl, non dictum tellus sapien ac nulla. Nam vel molestie sem. Integer dapibus nulla eget pretium auctor. Quisque eu posuere urna, eget ultricies lectus. Curabitur vestibulum lacinia pretium. Vivamus tortor elit, pharetra sed felis vel, posuere pretium massa. Quisque ullamcorper felis at tortor pulvinar, eget fringilla sem pellentesque. Proin non ex sapien. Nullam sollicitudin mauris sem, ut semper dui vestibulum mollis. Curabitur sit amet eleifend elit.</p>\r\n<p style="text-align: justify;">Integer facilisis mi in eros consectetur, quis bibendum ipsum dapibus. Donec ornare turpis nisi, ut viverra massa tempor ut. Integer fringilla faucibus nisl, non porttitor leo dignissim vulputate. Nulla hendrerit, purus vitae laoreet dignissim, est sem posuere ante, eu pulvinar sapien lorem viverra libero. Integer posuere risus eget enim facilisis, id cursus tortor dapibus. Praesent nec euismod sapien, sit amet auctor quam. Mauris lobortis vestibulum leo vitae molestie. Donec bibendum erat ac leo convallis faucibus. Curabitur iaculis nisl at ullamcorper iaculis. Aliquam at magna vitae libero iaculis posuere. Cras sagittis cursus quam et ultricies. Proin metus odio, rutrum quis quam ut, imperdiet placerat urna.</p>\r\n<p style="text-align: justify;">Aliquam tristique odio vel fringilla sagittis. Donec ac bibendum augue, in feugiat massa. Quisque non libero facilisis est semper iaculis ut vitae enim. Aenean purus justo, lobortis id eros varius, ultrices tempus ex. Donec vehicula arcu orci, vel luctus mi egestas a. Vestibulum mi turpis, mattis ut consequat vel, placerat eu sem. Etiam efficitur vehicula mauris, nec cursus metus consequat sit amet. Vivamus vel elit libero. Aliquam sagittis blandit ultrices. Nulla facilisi. Praesent tempus rhoncus facilisis.</p>\r\n<p style="text-align: justify;">Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean ultrices nisi ut magna faucibus tincidunt. Maecenas sed lacus neque. Ut volutpat urna nec velit condimentum, in lobortis orci ullamcorper. Fusce ac volutpat tellus, quis maximus sem. Morbi condimentum nisi sed tincidunt luctus. Phasellus libero ante, molestie quis augue quis, scelerisque interdum nisi. Aliquam leo dui, malesuada sed finibus id, semper vel orci.</p>\r\n<p style="text-align: justify;">Curabitur eu nulla ac est sodales consectetur. Vivamus urna nulla, eleifend sit amet porta sagittis, accumsan sed quam. Sed et est vitae lectus interdum venenatis. Pellentesque imperdiet nisi quis ornare semper. Morbi id ullamcorper elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas non mauris metus. Duis leo justo, faucibus in sem non, sollicitudin ornare nisl. Donec dolor diam, dignissim iaculis nisl in, auctor lobortis elit. Sed rhoncus dolor in dolor ullamcorper laoreet.</p>\r\n<p style="text-align: justify;">Maecenas ut nisl in neque cursus sagittis. Donec id eleifend diam, sed facilisis nunc. Nam vitae ligula nisl. In hac habitasse platea dictumst. Nam euismod placerat sem, in ullamcorper ligula euismod ac. Morbi nunc enim, tincidunt ac ex sed, feugiat dignissim neque. Nullam ac mi tempor lorem lobortis tristique eu id neque. Vivamus pulvinar viverra arcu et convallis. Sed dictum gravida nisi, vel maximus nulla. Morbi pharetra sem risus, ac tristique neque fermentum ac.</p>\r\n<p style="text-align: justify;">Suspendisse dictum vitae mi ut iaculis. Quisque placerat feugiat massa a sagittis. Maecenas non eros mollis lectus malesuada varius. Nunc in commodo nunc, a commodo nunc. Aliquam imperdiet molestie ante et pretium. Sed quis volutpat erat. Praesent interdum sapien ac velit mollis, ut faucibus libero cursus. Nulla fermentum eget nisl posuere hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque purus ipsum, ultricies vitae suscipit id, sodales nec sapien. Nam pretium nisl tortor, eget sodales dui gravida vitae. Sed varius quam massa, sit amet porttitor felis lobortis in. Fusce a euismod nisl, vitae laoreet massa. Ut fermentum orci non tellus posuere, quis tempus tortor auctor.</p>', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae felis id est condimentum dapibus. Proin lacinia elementum ligula vel mattis. Duis enim augue, tempor quis porta sed, egestas convallis tellus. Donec diam est, faucibus feugiat dui vel, tempus tincidunt ante. Morbi gravida tincidunt pellentesque. Vestibulum commodo, libero ut facilisis vehicula, diam tellus fringilla est, eu eleifend magna lorem vel massa. Duis ullamcorper eget libero id molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam hendrerit suscipit massa a tempus. Morbi cursus tempus diam, ut gravida orci consequat sagittis. Integer feugiat nisl at enim lobortis, ut faucibus lectus aliquam. Nunc dignissim est vitae fermentum bibendum. Praesent elementum ante ipsum, sed sodales nisi blandit aliquet. Donec aliquet auctor scelerisque.</p>\r\n<p style="text-align: justify;">Quisque ornare magna ut elementum placerat. Vivamus egestas ornare dolor id dignissim. Maecenas tellus urna, feugiat eget pharetra sit amet, maximus vitae massa. Proin ut maximus diam, eget volutpat ante. Duis fringilla feugiat interdum. Nullam rhoncus quam a tellus fermentum tristique. Curabitur scelerisque turpis et risus fringilla rutrum a non augue. Aliquam a tellus euismod, pretium urna dictum, maximus ex. Donec ac libero eget odio sagittis suscipit vitae eu urna.</p>\r\n<p style="text-align: justify;">Phasellus ultricies, lorem ut tempor lobortis, lectus massa elementum lectus, id mattis dolor nibh vel tortor. Curabitur sollicitudin metus vel ipsum faucibus, ac accumsan diam tempor. Duis finibus neque arcu, non mattis diam pharetra ac. Aliquam scelerisque quam purus, sit amet rutrum felis dictum elementum. Cras feugiat leo quis massa consequat, eu semper quam interdum. Vivamus ultricies vel nulla ac tempus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam sit amet suscipit diam, nec pellentesque ipsum. Quisque nec nisl non lacus pulvinar varius.</p>\r\n<p style="text-align: justify;">Sed sed dui ut quam varius auctor id id metus. Nulla malesuada eget nisl ac lobortis. Ut suscipit semper nulla nec tincidunt. Nullam consequat dolor et est malesuada convallis. Phasellus varius, augue at eleifend consequat, tellus dui sollicitudin nisl, non dictum tellus sapien ac nulla. Nam vel molestie sem. Integer dapibus nulla eget pretium auctor. Quisque eu posuere urna, eget ultricies lectus. Curabitur vestibulum lacinia pretium. Vivamus tortor elit, pharetra sed felis vel, posuere pretium massa. Quisque ullamcorper felis at tortor pulvinar, eget fringilla sem pellentesque. Proin non ex sapien. Nullam sollicitudin mauris sem, ut semper dui vestibulum mollis. Curabitur sit amet eleifend elit.</p>\r\n<p style="text-align: justify;">Integer facilisis mi in eros consectetur, quis bibendum ipsum dapibus. Donec ornare turpis nisi, ut viverra massa tempor ut. Integer fringilla faucibus nisl, non porttitor leo dignissim vulputate. Nulla hendrerit, purus vitae laoreet dignissim, est sem posuere ante, eu pulvinar sapien lorem viverra libero. Integer posuere risus eget enim facilisis, id cursus tortor dapibus. Praesent nec euismod sapien, sit amet auctor quam. Mauris lobortis vestibulum leo vitae molestie. Donec bibendum erat ac leo convallis faucibus. Curabitur iaculis nisl at ullamcorper iaculis. Aliquam at magna vitae libero iaculis posuere. Cras sagittis cursus quam et ultricies. Proin metus odio, rutrum quis quam ut, imperdiet placerat urna.</p>\r\n<p style="text-align: justify;">Aliquam tristique odio vel fringilla sagittis. Donec ac bibendum augue, in feugiat massa. Quisque non libero facilisis est semper iaculis ut vitae enim. Aenean purus justo, lobortis id eros varius, ultrices tempus ex. Donec vehicula arcu orci, vel luctus mi egestas a. Vestibulum mi turpis, mattis ut consequat vel, placerat eu sem. Etiam efficitur vehicula mauris, nec cursus metus consequat sit amet. Vivamus vel elit libero. Aliquam sagittis blandit ultrices. Nulla facilisi. Praesent tempus rhoncus facilisis.</p>\r\n<p style="text-align: justify;">Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean ultrices nisi ut magna faucibus tincidunt. Maecenas sed lacus neque. Ut volutpat urna nec velit condimentum, in lobortis orci ullamcorper. Fusce ac volutpat tellus, quis maximus sem. Morbi condimentum nisi sed tincidunt luctus. Phasellus libero ante, molestie quis augue quis, scelerisque interdum nisi. Aliquam leo dui, malesuada sed finibus id, semper vel orci.</p>\r\n<p style="text-align: justify;">Curabitur eu nulla ac est sodales consectetur. Vivamus urna nulla, eleifend sit amet porta sagittis, accumsan sed quam. Sed et est vitae lectus interdum venenatis. Pellentesque imperdiet nisi quis ornare semper. Morbi id ullamcorper elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas non mauris metus. Duis leo justo, faucibus in sem non, sollicitudin ornare nisl. Donec dolor diam, dignissim iaculis nisl in, auctor lobortis elit. Sed rhoncus dolor in dolor ullamcorper laoreet.</p>\r\n<p style="text-align: justify;">Maecenas ut nisl in neque cursus sagittis. Donec id eleifend diam, sed facilisis nunc. Nam vitae ligula nisl. In hac habitasse platea dictumst. Nam euismod placerat sem, in ullamcorper ligula euismod ac. Morbi nunc enim, tincidunt ac ex sed, feugiat dignissim neque. Nullam ac mi tempor lorem lobortis tristique eu id neque. Vivamus pulvinar viverra arcu et convallis. Sed dictum gravida nisi, vel maximus nulla. Morbi pharetra sem risus, ac tristique neque fermentum ac.</p>\r\n<p style="text-align: justify;">Suspendisse dictum vitae mi ut iaculis. Quisque placerat feugiat massa a sagittis. Maecenas non eros mollis lectus malesuada varius. Nunc in commodo nunc, a commodo nunc. Aliquam imperdiet molestie ante et pretium. Sed quis volutpat erat. Praesent interdum sapien ac velit mollis, ut faucibus libero cursus. Nulla fermentum eget nisl posuere hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque purus ipsum, ultricies vitae suscipit id, sodales nec sapien. Nam pretium nisl tortor, eget sodales dui gravida vitae. Sed varius quam massa, sit amet porttitor felis lobortis in. Fusce a euismod nisl, vitae laoreet massa. Ut fermentum orci non tellus posuere, quis tempus tortor auctor.</p>', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae felis id est condimentum dapibus. Proin lacinia elementum ligula vel mattis. Duis enim augue, tempor quis porta sed, egestas convallis tellus. Donec diam est, faucibus feugiat dui vel, tempus tincidunt ante. Morbi gravida tincidunt pellentesque. Vestibulum commodo, libero ut facilisis vehicula, diam tellus fringilla est, eu eleifend magna lorem vel massa. Duis ullamcorper eget libero id molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam hendrerit suscipit massa a tempus. Morbi cursus tempus diam, ut gravida orci consequat sagittis. Integer feugiat nisl at enim lobortis, ut faucibus lectus aliquam. Nunc dignissim est vitae fermentum bibendum. Praesent elementum ante ipsum, sed sodales nisi blandit aliquet. Donec aliquet auctor scelerisque.</p>\r\n<p style="text-align: justify;">Quisque ornare magna ut elementum placerat. Vivamus egestas ornare dolor id dignissim. Maecenas tellus urna, feugiat eget pharetra sit amet, maximus vitae massa. Proin ut maximus diam, eget volutpat ante. Duis fringilla feugiat interdum. Nullam rhoncus quam a tellus fermentum tristique. Curabitur scelerisque turpis et risus fringilla rutrum a non augue. Aliquam a tellus euismod, pretium urna dictum, maximus ex. Donec ac libero eget odio sagittis suscipit vitae eu urna.</p>\r\n<p style="text-align: justify;">Phasellus ultricies, lorem ut tempor lobortis, lectus massa elementum lectus, id mattis dolor nibh vel tortor. Curabitur sollicitudin metus vel ipsum faucibus, ac accumsan diam tempor. Duis finibus neque arcu, non mattis diam pharetra ac. Aliquam scelerisque quam purus, sit amet rutrum felis dictum elementum. Cras feugiat leo quis massa consequat, eu semper quam interdum. Vivamus ultricies vel nulla ac tempus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam sit amet suscipit diam, nec pellentesque ipsum. Quisque nec nisl non lacus pulvinar varius.</p>\r\n<p style="text-align: justify;">Sed sed dui ut quam varius auctor id id metus. Nulla malesuada eget nisl ac lobortis. Ut suscipit semper nulla nec tincidunt. Nullam consequat dolor et est malesuada convallis. Phasellus varius, augue at eleifend consequat, tellus dui sollicitudin nisl, non dictum tellus sapien ac nulla. Nam vel molestie sem. Integer dapibus nulla eget pretium auctor. Quisque eu posuere urna, eget ultricies lectus. Curabitur vestibulum lacinia pretium. Vivamus tortor elit, pharetra sed felis vel, posuere pretium massa. Quisque ullamcorper felis at tortor pulvinar, eget fringilla sem pellentesque. Proin non ex sapien. Nullam sollicitudin mauris sem, ut semper dui vestibulum mollis. Curabitur sit amet eleifend elit.</p>\r\n<p style="text-align: justify;">Integer facilisis mi in eros consectetur, quis bibendum ipsum dapibus. Donec ornare turpis nisi, ut viverra massa tempor ut. Integer fringilla faucibus nisl, non porttitor leo dignissim vulputate. Nulla hendrerit, purus vitae laoreet dignissim, est sem posuere ante, eu pulvinar sapien lorem viverra libero. Integer posuere risus eget enim facilisis, id cursus tortor dapibus. Praesent nec euismod sapien, sit amet auctor quam. Mauris lobortis vestibulum leo vitae molestie. Donec bibendum erat ac leo convallis faucibus. Curabitur iaculis nisl at ullamcorper iaculis. Aliquam at magna vitae libero iaculis posuere. Cras sagittis cursus quam et ultricies. Proin metus odio, rutrum quis quam ut, imperdiet placerat urna.</p>\r\n<p style="text-align: justify;">Aliquam tristique odio vel fringilla sagittis. Donec ac bibendum augue, in feugiat massa. Quisque non libero facilisis est semper iaculis ut vitae enim. Aenean purus justo, lobortis id eros varius, ultrices tempus ex. Donec vehicula arcu orci, vel luctus mi egestas a. Vestibulum mi turpis, mattis ut consequat vel, placerat eu sem. Etiam efficitur vehicula mauris, nec cursus metus consequat sit amet. Vivamus vel elit libero. Aliquam sagittis blandit ultrices. Nulla facilisi. Praesent tempus rhoncus facilisis.</p>\r\n<p style="text-align: justify;">Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean ultrices nisi ut magna faucibus tincidunt. Maecenas sed lacus neque. Ut volutpat urna nec velit condimentum, in lobortis orci ullamcorper. Fusce ac volutpat tellus, quis maximus sem. Morbi condimentum nisi sed tincidunt luctus. Phasellus libero ante, molestie quis augue quis, scelerisque interdum nisi. Aliquam leo dui, malesuada sed finibus id, semper vel orci.</p>\r\n<p style="text-align: justify;">Curabitur eu nulla ac est sodales consectetur. Vivamus urna nulla, eleifend sit amet porta sagittis, accumsan sed quam. Sed et est vitae lectus interdum venenatis. Pellentesque imperdiet nisi quis ornare semper. Morbi id ullamcorper elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas non mauris metus. Duis leo justo, faucibus in sem non, sollicitudin ornare nisl. Donec dolor diam, dignissim iaculis nisl in, auctor lobortis elit. Sed rhoncus dolor in dolor ullamcorper laoreet.</p>\r\n<p style="text-align: justify;">Maecenas ut nisl in neque cursus sagittis. Donec id eleifend diam, sed facilisis nunc. Nam vitae ligula nisl. In hac habitasse platea dictumst. Nam euismod placerat sem, in ullamcorper ligula euismod ac. Morbi nunc enim, tincidunt ac ex sed, feugiat dignissim neque. Nullam ac mi tempor lorem lobortis tristique eu id neque. Vivamus pulvinar viverra arcu et convallis. Sed dictum gravida nisi, vel maximus nulla. Morbi pharetra sem risus, ac tristique neque fermentum ac.</p>\r\n<p style="text-align: justify;">Suspendisse dictum vitae mi ut iaculis. Quisque placerat feugiat massa a sagittis. Maecenas non eros mollis lectus malesuada varius. Nunc in commodo nunc, a commodo nunc. Aliquam imperdiet molestie ante et pretium. Sed quis volutpat erat. Praesent interdum sapien ac velit mollis, ut faucibus libero cursus. Nulla fermentum eget nisl posuere hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque purus ipsum, ultricies vitae suscipit id, sodales nec sapien. Nam pretium nisl tortor, eget sodales dui gravida vitae. Sed varius quam massa, sit amet porttitor felis lobortis in. Fusce a euismod nisl, vitae laoreet massa. Ut fermentum orci non tellus posuere, quis tempus tortor auctor.</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actasparticipantes`
--

CREATE TABLE `actasparticipantes` (
  `id_actasparticipantes` int(11) NOT NULL,
  `id_participante` int(11) NOT NULL,
  `id_acta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actasparticipantes`
--

INSERT INTO `actasparticipantes` (`id_actasparticipantes`, `id_participante`, `id_acta`) VALUES
(10, 1, 1),
(11, 2, 1),
(12, 3, 1),
(13, 4, 1),
(14, 5, 1),
(15, 6, 1),
(16, 7, 1),
(17, 8, 1),
(18, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL,
  `empresa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresa`, `empresa`, `tipo`) VALUES
(1, 'UNIMARK S.A.', 'G'),
(2, 'INNOVA S.A.', 'G'),
(3, 'UMA-AGRO S.A.', 'G'),
(4, 'AGLOSA S.A.', 'G'),
(5, 'IT (GCIT)', 'C'),
(6, 'Operación y Logística (GCOL)', 'C'),
(7, 'Administración Financiera (GCAF)', 'C'),
(8, 'Gestión Humana (GCGH)', 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugaresdereunion`
--

CREATE TABLE `lugaresdereunion` (
  `id_lugar` int(11) NOT NULL,
  `lugar` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `lugaresdereunion`
--

INSERT INTO `lugaresdereunion` (`id_lugar`, `lugar`) VALUES
(1, 'Sala de conferencias Unimark'),
(2, 'Sala de conferencias Uma-Agro'),
(3, 'Sala de conferencias Innova');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gerencia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`id_participante`, `nombres`, `apellidos`, `gerencia`, `estado`) VALUES
(1, 'Lic. Alvaro', 'Saenz Galo', 'Presidencia', b'1'),
(2, 'Ing. Ronald Alberto', 'Ruiz Bermúdez', 'Gerente Corporativo de Información y Tecnología', b'1'),
(3, 'Lic. Moises', 'Valdivia', 'Gerente Corporativo de Operación y Logística', b'1'),
(4, 'Lic. Jorge Ernesto', 'Pineda Cortez', 'Gerente Corporativo de Administración Financiera', b'1'),
(5, 'Lic. Sicinio', 'Mejía Maldonado', 'Gerente Corporativo de Gestión Humana', b'1'),
(6, 'Lic. Roberto Antonio', 'Lacayo Chávez', 'Gerente General Unimark', b'1'),
(7, 'Lic. Reynerio', 'Pastora Sánchez', 'Gerente General Uma-Agro', b'1'),
(8, 'Lic. Fabricio', 'Moreno', 'Gerente General Innova', b'1'),
(9, 'Lic. Isidro', 'Valdez', 'Gerente General Aglosa', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id_tipousuario` int(11) NOT NULL,
  `tipousuario` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `nombretipousuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id_tipousuario`, `tipousuario`, `nombretipousuario`) VALUES
(1, 'A', 'ADMINISTRADOR'),
(2, 'C', 'CORPORATIVO'),
(3, 'G', 'GERENCIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estado` bit(1) NOT NULL,
  `id_tipousuario` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `password`, `nombres`, `apellidos`, `estado`, `id_tipousuario`, `id_empresa`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Kevin Alejandro', 'Rivera Blas', b'1', 1, 5),
(2, 'gcit', '202cb962ac59075b964b07152d234b70', 'Ronald Alberto', 'Ruiz Bermúdez', b'1', 2, 5),
(3, 'gaglosa', '202cb962ac59075b964b07152d234b70', 'Isidro', 'Valdez', b'1', 3, 4),
(4, 'gunimark', '202cb962ac59075b964b07152d234b70', 'Roberto', 'Lacayo', b'1', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actasguma`
--
ALTER TABLE `actasguma`
  ADD PRIMARY KEY (`id_acta`);

--
-- Indices de la tabla `actasparticipantes`
--
ALTER TABLE `actasparticipantes`
  ADD PRIMARY KEY (`id_actasparticipantes`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `lugaresdereunion`
--
ALTER TABLE `lugaresdereunion`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id_participante`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_tipousuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actasguma`
--
ALTER TABLE `actasguma`
  MODIFY `id_acta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `actasparticipantes`
--
ALTER TABLE `actasparticipantes`
  MODIFY `id_actasparticipantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `lugaresdereunion`
--
ALTER TABLE `lugaresdereunion`
  MODIFY `id_lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `participantes`
--
ALTER TABLE `participantes`
  MODIFY `id_participante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id_tipousuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
