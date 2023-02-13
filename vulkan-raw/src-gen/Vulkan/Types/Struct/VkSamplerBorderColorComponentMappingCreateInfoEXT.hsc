{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_border_color_swizzle

module Vulkan.Types.Struct.VkSamplerBorderColorComponentMappingCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkComponentMapping



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerBorderColorComponentMappingCreateInfoEXT" #-} VkSamplerBorderColorComponentMappingCreateInfoEXT =
       VkSamplerBorderColorComponentMappingCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , components :: VkComponentMapping
         , srgb :: VkBool32
         }

instance Storable VkSamplerBorderColorComponentMappingCreateInfoEXT where
  sizeOf    _ = #{size      VkSamplerBorderColorComponentMappingCreateInfoEXT}
  alignment _ = #{alignment VkSamplerBorderColorComponentMappingCreateInfoEXT}

  peek ptr = 
    VkSamplerBorderColorComponentMappingCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"components" ptr)
       <*> peek (offset @"srgb" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"components" ptr val
    pokeField @"srgb" ptr val

instance Offset "sType" VkSamplerBorderColorComponentMappingCreateInfoEXT where
  rawOffset = #{offset VkSamplerBorderColorComponentMappingCreateInfoEXT, sType}

instance Offset "pNext" VkSamplerBorderColorComponentMappingCreateInfoEXT where
  rawOffset = #{offset VkSamplerBorderColorComponentMappingCreateInfoEXT, pNext}

instance Offset "components" VkSamplerBorderColorComponentMappingCreateInfoEXT where
  rawOffset = #{offset VkSamplerBorderColorComponentMappingCreateInfoEXT, components}

instance Offset "srgb" VkSamplerBorderColorComponentMappingCreateInfoEXT where
  rawOffset = #{offset VkSamplerBorderColorComponentMappingCreateInfoEXT, srgb}

#else

module Vulkan.Types.Struct.VkSamplerBorderColorComponentMappingCreateInfoEXT where

#endif