{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_MVK_macos_surface

module Vulkan.Types.Struct.VkMacOSSurfaceCreateInfoMVK where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkMacOSSurfaceCreateFlagsMVK
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMacOSSurfaceCreateInfoMVK" #-} VkMacOSSurfaceCreateInfoMVK =
       VkMacOSSurfaceCreateInfoMVK
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkMacOSSurfaceCreateFlagsMVK
         , pView :: Ptr ()
         }

instance Storable VkMacOSSurfaceCreateInfoMVK where
  sizeOf    _ = #{size      struct VkMacOSSurfaceCreateInfoMVK}
  alignment _ = #{alignment struct VkMacOSSurfaceCreateInfoMVK}

  peek ptr = 
    VkMacOSSurfaceCreateInfoMVK
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"pView" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pView" ptr val

instance Offset "sType" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset struct VkMacOSSurfaceCreateInfoMVK, sType}

instance Offset "pNext" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset struct VkMacOSSurfaceCreateInfoMVK, pNext}

instance Offset "flags" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset struct VkMacOSSurfaceCreateInfoMVK, flags}

instance Offset "pView" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset struct VkMacOSSurfaceCreateInfoMVK, pView}

#else

module Vulkan.Types.Struct.VkMacOSSurfaceCreateInfoMVK where

#endif