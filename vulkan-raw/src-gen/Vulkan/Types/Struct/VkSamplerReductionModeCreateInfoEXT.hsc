{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sampler_filter_minmax

module Vulkan.Types.Struct.VkSamplerReductionModeCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSamplerReductionMode
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerReductionModeCreateInfoEXT" #-} VkSamplerReductionModeCreateInfoEXT =
       VkSamplerReductionModeCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , reductionMode :: VkSamplerReductionMode
         }

instance Storable VkSamplerReductionModeCreateInfoEXT where
  sizeOf    _ = #{size      VkSamplerReductionModeCreateInfoEXT}
  alignment _ = #{alignment VkSamplerReductionModeCreateInfoEXT}

  peek ptr = 
    VkSamplerReductionModeCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"reductionMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"reductionMode" ptr val

instance Offset "sType" VkSamplerReductionModeCreateInfoEXT where
  rawOffset = #{offset VkSamplerReductionModeCreateInfoEXT, sType}

instance Offset "pNext" VkSamplerReductionModeCreateInfoEXT where
  rawOffset = #{offset VkSamplerReductionModeCreateInfoEXT, pNext}

instance Offset "reductionMode" VkSamplerReductionModeCreateInfoEXT where
  rawOffset = #{offset VkSamplerReductionModeCreateInfoEXT, reductionMode}

#else

module Vulkan.Types.Struct.VkSamplerReductionModeCreateInfoEXT where

#endif