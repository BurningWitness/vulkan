{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_wayland_surface

module Vulkan.Types.Struct.VkWaylandSurfaceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkWaylandSurfaceCreateFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkWaylandSurfaceCreateInfoKHR" #-} VkWaylandSurfaceCreateInfoKHR =
       VkWaylandSurfaceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkWaylandSurfaceCreateFlagsKHR
         , display :: Ptr WlDisplay
         , surface :: Ptr WlSurface
         }

instance Storable VkWaylandSurfaceCreateInfoKHR where
  sizeOf    _ = #{size      VkWaylandSurfaceCreateInfoKHR}
  alignment _ = #{alignment VkWaylandSurfaceCreateInfoKHR}

  peek ptr = 
    VkWaylandSurfaceCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"display" ptr)
       <*> peek (offset @"surface" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"display" ptr val
    pokeField @"surface" ptr val

instance Offset "sType" VkWaylandSurfaceCreateInfoKHR where
  rawOffset = #{offset VkWaylandSurfaceCreateInfoKHR, sType}

instance Offset "pNext" VkWaylandSurfaceCreateInfoKHR where
  rawOffset = #{offset VkWaylandSurfaceCreateInfoKHR, pNext}

instance Offset "flags" VkWaylandSurfaceCreateInfoKHR where
  rawOffset = #{offset VkWaylandSurfaceCreateInfoKHR, flags}

instance Offset "display" VkWaylandSurfaceCreateInfoKHR where
  rawOffset = #{offset VkWaylandSurfaceCreateInfoKHR, display}

instance Offset "surface" VkWaylandSurfaceCreateInfoKHR where
  rawOffset = #{offset VkWaylandSurfaceCreateInfoKHR, surface}

#else

module Vulkan.Types.Struct.VkWaylandSurfaceCreateInfoKHR where

#endif