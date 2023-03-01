{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_MVK_ios_surface

module Vulkan.Types.Struct.VkIOSSurfaceCreateInfoMVK where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkIOSSurfaceCreateFlagsMVK
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkIOSSurfaceCreateInfoMVK" #-} VkIOSSurfaceCreateInfoMVK =
       VkIOSSurfaceCreateInfoMVK
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkIOSSurfaceCreateFlagsMVK
         , pView :: Ptr ()
         }

instance Storable VkIOSSurfaceCreateInfoMVK where
  sizeOf    _ = #{size      VkIOSSurfaceCreateInfoMVK}
  alignment _ = #{alignment VkIOSSurfaceCreateInfoMVK}

  peek ptr = 
    VkIOSSurfaceCreateInfoMVK
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pView" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pView" ptr val

instance Offset "sType" VkIOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkIOSSurfaceCreateInfoMVK, sType}

instance Offset "pNext" VkIOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkIOSSurfaceCreateInfoMVK, pNext}

instance Offset "flags" VkIOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkIOSSurfaceCreateInfoMVK, flags}

instance Offset "pView" VkIOSSurfaceCreateInfoMVK where
  rawOffset = #{offset VkIOSSurfaceCreateInfoMVK, pView}

#else

module Vulkan.Types.Struct.VkIOSSurfaceCreateInfoMVK where

#endif