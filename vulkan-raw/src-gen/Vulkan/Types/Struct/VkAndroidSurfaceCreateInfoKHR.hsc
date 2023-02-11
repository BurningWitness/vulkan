{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_android_surface

module Vulkan.Types.Struct.VkAndroidSurfaceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkAndroidSurfaceCreateFlagsKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAndroidSurfaceCreateInfoKHR" #-} VkAndroidSurfaceCreateInfoKHR =
       VkAndroidSurfaceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkAndroidSurfaceCreateFlagsKHR
         , window :: Ptr ANativeWindow
         }

instance Storable VkAndroidSurfaceCreateInfoKHR where
  sizeOf    _ = #{size      struct VkAndroidSurfaceCreateInfoKHR}
  alignment _ = #{alignment struct VkAndroidSurfaceCreateInfoKHR}

  peek ptr = 
    VkAndroidSurfaceCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"window" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"window" ptr val

instance Offset "sType" VkAndroidSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkAndroidSurfaceCreateInfoKHR, sType}

instance Offset "pNext" VkAndroidSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkAndroidSurfaceCreateInfoKHR, pNext}

instance Offset "flags" VkAndroidSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkAndroidSurfaceCreateInfoKHR, flags}

instance Offset "window" VkAndroidSurfaceCreateInfoKHR where
  rawOffset = #{offset struct VkAndroidSurfaceCreateInfoKHR, window}

#else

module Vulkan.Types.Struct.VkAndroidSurfaceCreateInfoKHR where

#endif