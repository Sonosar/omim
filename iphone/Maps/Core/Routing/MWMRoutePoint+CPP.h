#import "MWMRoutePoint.h"

#include "map/mwm_url.hpp"
#include "map/routing_mark.hpp"

@interface MWMRoutePoint (CPP)

@property(nonatomic, readonly) RouteMarkData routeMarkData;

- (instancetype)initWithURLSchemeRoutePoint:(url_scheme::RoutePoint const &)point
                                       type:(MWMRoutePointType)type;
- (instancetype)initWithRouteMarkData:(RouteMarkData const &)point;
- (instancetype)initWithPoint:(m2::PointD const &)point type:(MWMRoutePointType)type;

@end
