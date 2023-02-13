{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_headless_surface

module Vulkan.Types.Struct.VkHeadlessSurfaceCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkHeadlessSurfaceCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkHeadlessSurfaceCreateInfoEXT" #-} VkHeadlessSurfaceCreateInfoEXT =
       VkHeadlessSurfaceCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkHeadlessSurfaceCreateFlagsEXT
         }

instance Storable VkHeadlessSurfaceCreateInfoEXT where
  sizeOf    _ = #{size      VkHeadlessSurfaceCreateInfoEXT}
  alignment _ = #{alignment VkHeadlessSurfaceCreateInfoEXT}

  peek ptr = 
    VkHeadlessSurfaceCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkHeadlessSurfaceCreateInfoEXT where
  rawOffset = #{offset VkHeadlessSurfaceCreateInfoEXT, sType}

instance Offset "pNext" VkHeadlessSurfaceCreateInfoEXT where
  rawOffset = #{offset VkHeadlessSurfaceCreateInfoEXT, pNext}

instance Offset "flags" VkHeadlessSurfaceCreateInfoEXT where
  rawOffset = #{offset VkHeadlessSurfaceCreateInfoEXT, flags}

#else

module Vulkan.Types.Struct.VkHeadlessSurfaceCreateInfoEXT where

#endif