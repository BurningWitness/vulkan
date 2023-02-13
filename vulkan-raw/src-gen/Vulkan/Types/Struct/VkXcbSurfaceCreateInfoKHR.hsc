{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_xcb_surface

module Vulkan.Types.Struct.VkXcbSurfaceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkXcbSurfaceCreateFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkXcbSurfaceCreateInfoKHR" #-} VkXcbSurfaceCreateInfoKHR =
       VkXcbSurfaceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkXcbSurfaceCreateFlagsKHR
         , connection :: Ptr XcbConnectionT
         , window :: XcbWindowT
         }

instance Storable VkXcbSurfaceCreateInfoKHR where
  sizeOf    _ = #{size      VkXcbSurfaceCreateInfoKHR}
  alignment _ = #{alignment VkXcbSurfaceCreateInfoKHR}

  peek ptr = 
    VkXcbSurfaceCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"connection" ptr)
       <*> peek (offset @"window" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"connection" ptr val
    pokeField @"window" ptr val

instance Offset "sType" VkXcbSurfaceCreateInfoKHR where
  rawOffset = #{offset VkXcbSurfaceCreateInfoKHR, sType}

instance Offset "pNext" VkXcbSurfaceCreateInfoKHR where
  rawOffset = #{offset VkXcbSurfaceCreateInfoKHR, pNext}

instance Offset "flags" VkXcbSurfaceCreateInfoKHR where
  rawOffset = #{offset VkXcbSurfaceCreateInfoKHR, flags}

instance Offset "connection" VkXcbSurfaceCreateInfoKHR where
  rawOffset = #{offset VkXcbSurfaceCreateInfoKHR, connection}

instance Offset "window" VkXcbSurfaceCreateInfoKHR where
  rawOffset = #{offset VkXcbSurfaceCreateInfoKHR, window}

#else

module Vulkan.Types.Struct.VkXcbSurfaceCreateInfoKHR where

#endif