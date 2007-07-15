%module mapcontrol
%{
#include "controller/control.h"
%}

%include "util/point.h"

namespace FIFE { 
	class CannotOpenFile;
	namespace map {

	class MapLoader;

	class Control {
		public:
			Control();
			~Control();

			void addMapLoader(MapLoader* loader);

			void load(const std::string& filename) throw(CannotOpenFile);
      
			void start();
			void update();
			void stop();
			bool isRunning();

			Point select(const Point& mousept, size_t layer);

		private:
	};
}}