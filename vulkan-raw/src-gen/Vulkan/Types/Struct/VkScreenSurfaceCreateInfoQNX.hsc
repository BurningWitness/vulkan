{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkScreenSurfaceCreateInfoQNX}
  alignment _ = #{alignment VkScreenSurfaceCreateInfoQNX}

  peek ptr = 
    VkScreenSurfaceCreateInfoQNX
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"context" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"window" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"context" ptr val
    pokeField @"window" ptr val

instance Offset "sType" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset VkScreenSurfaceCreateInfoQNX, sType}

instance Offset "pNext" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset VkScreenSurfaceCreateInfoQNX, pNext}

instance Offset "flags" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset VkScreenSurfaceCreateInfoQNX, flags}

instance Offset "context" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset VkScreenSurfaceCreateInfoQNX, context}

instance Offset "window" VkScreenSurfaceCreateInfoQNX where
  rawOffset = #{offset VkScreenSurfaceCreateInfoQNX, window}

#else

module Vulkan.Types.Struct.VkScreenSurfaceCreateInfoQNX where

#endif