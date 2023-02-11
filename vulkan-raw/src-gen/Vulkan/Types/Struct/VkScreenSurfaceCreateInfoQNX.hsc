{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QNX_screen_surface

module Vulkan.Types.Struct.VkScreenSurfaceCreateInfoQNX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkScreenSurfaceCreateFlagsQNX
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkScreenSurfaceCreateInfoQNX" #-} VkScreenSurfaceCreateInfoQNX =
       VkScreenSurfaceCreateInfoQNX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkScreenSurfaceCreateFlagsQNX
         , context :: Ptr ScreenContext
         , window :: Ptr ScreenWindow
         }

instance Storable VkScreenSurfaceCreateInfoQNX where
  sizeOf    _ = #{size      struct VkScreenSurfaceCreateInfoQNX}
  alignment _ = #{alignment struct VkScreenSurfaceCreateInfoQNX}

  peek ptr = 
    VkScreenSurfaceCreateInfoQNX
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"context" ptr)
       <*> peek (offset @"window" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"context" ptr val
    pokeField @"window" ptr val

instance Offset "sType" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset struct VkScreenSurfaceCreateInfoQNX, sType}

instance Offset "pNext" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset struct VkScreenSurfaceCreateInfoQNX, pNext}

instance Offset "flags" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset struct VkScreenSurfaceCreateInfoQNX, flags}

instance Offset "context" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset struct VkScreenSurfaceCreateInfoQNX, context}

instance Offset "window" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset struct VkScreenSurfaceCreateInfoQNX, window}

#else

module Vulkan.Types.Struct.VkScreenSurfaceCreateInfoQNX where

#endif