{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkMacOSSurfaceCreateInfoMVK}
  alignment _ = #{alignment VkMacOSSurfaceCreateInfoMVK}

  peek ptr = 
    VkMacOSSurfaceCreateInfoMVK
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pView" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pView" ptr val

instance Offset "sType" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkMacOSSurfaceCreateInfoMVK, sType}

instance Offset "pNext" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkMacOSSurfaceCreateInfoMVK, pNext}

instance Offset "flags" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkMacOSSurfaceCreateInfoMVK, flags}

instance Offset "pView" VkMacOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkMacOSSurfaceCreateInfoMVK, pView}

#else

module Vulkan.Types.Struct.VkMacOSSurfaceCreateInfoMVK where

#endif