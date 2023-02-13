{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_imagepipe_surface

module Vulkan.Types.Struct.VkImagePipeSurfaceCreateInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkImagePipeSurfaceCreateFlagsFUCHSIA
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImagePipeSurfaceCreateInfoFUCHSIA" #-} VkImagePipeSurfaceCreateInfoFUCHSIA =
       VkImagePipeSurfaceCreateInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkImagePipeSurfaceCreateFlagsFUCHSIA
         , imagePipeHandle :: ZxHandleT
         }

instance Storable VkImagePipeSurfaceCreateInfoFUCHSIA where
  sizeOf    _ = #{size      VkImagePipeSurfaceCreateInfoFUCHSIA}
  alignment _ = #{alignment VkImagePipeSurfaceCreateInfoFUCHSIA}

  peek ptr = 
    VkImagePipeSurfaceCreateInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"imagePipeHandle" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"imagePipeHandle" ptr val

instance Offset "sType" VkImagePipeSurfaceCreateInfoFUCHSIA where
  rawOffset = #{offset VkImagePipeSurfaceCreateInfoFUCHSIA, sType}

instance Offset "pNext" VkImagePipeSurfaceCreateInfoFUCHSIA where
  rawOffset = #{offset VkImagePipeSurfaceCreateInfoFUCHSIA, pNext}

instance Offset "flags" VkImagePipeSurfaceCreateInfoFUCHSIA where
  rawOffset = #{offset VkImagePipeSurfaceCreateInfoFUCHSIA, flags}

instance Offset "imagePipeHandle" VkImagePipeSurfaceCreateInfoFUCHSIA where
  rawOffset = #{offset VkImagePipeSurfaceCreateInfoFUCHSIA, imagePipeHandle}

#else

module Vulkan.Types.Struct.VkImagePipeSurfaceCreateInfoFUCHSIA where

#endif