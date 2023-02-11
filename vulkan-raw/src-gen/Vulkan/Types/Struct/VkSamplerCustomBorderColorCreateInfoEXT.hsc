{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_custom_border_color

module Vulkan.Types.Struct.VkSamplerCustomBorderColorCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkClearColorValue



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerCustomBorderColorCreateInfoEXT" #-} VkSamplerCustomBorderColorCreateInfoEXT =
       VkSamplerCustomBorderColorCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , customBorderColor :: VkClearColorValue
         , format :: VkFormat
         }

instance Storable VkSamplerCustomBorderColorCreateInfoEXT where
  sizeOf    _ = #{size      struct VkSamplerCustomBorderColorCreateInfoEXT}
  alignment _ = #{alignment struct VkSamplerCustomBorderColorCreateInfoEXT}

  peek ptr = 
    VkSamplerCustomBorderColorCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"customBorderColor" ptr)
       <*> peek (offset @"format" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"customBorderColor" ptr val
    pokeField @"format" ptr val

instance Offset "sType" VkSamplerCustomBorderColorCreateInfoEXT where
  rawOffset = #{offset struct VkSamplerCustomBorderColorCreateInfoEXT, sType}

instance Offset "pNext" VkSamplerCustomBorderColorCreateInfoEXT where
  rawOffset = #{offset struct VkSamplerCustomBorderColorCreateInfoEXT, pNext}

instance Offset "customBorderColor" VkSamplerCustomBorderColorCreateInfoEXT where
  rawOffset = #{offset struct VkSamplerCustomBorderColorCreateInfoEXT, customBorderColor}

instance Offset "format" VkSamplerCustomBorderColorCreateInfoEXT where
  rawOffset = #{offset struct VkSamplerCustomBorderColorCreateInfoEXT, format}

#else

module Vulkan.Types.Struct.VkSamplerCustomBorderColorCreateInfoEXT where

#endif