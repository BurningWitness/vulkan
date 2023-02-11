{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multisampled_render_to_single_sampled

module Vulkan.Types.Struct.VkMultisampledRenderToSingleSampledInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMultisampledRenderToSingleSampledInfoEXT" #-} VkMultisampledRenderToSingleSampledInfoEXT =
       VkMultisampledRenderToSingleSampledInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , multisampledRenderToSingleSampledEnable :: VkBool32
         , rasterizationSamples :: VkSampleCountFlagBits
         }

instance Storable VkMultisampledRenderToSingleSampledInfoEXT where
  sizeOf    _ = #{size      struct VkMultisampledRenderToSingleSampledInfoEXT}
  alignment _ = #{alignment struct VkMultisampledRenderToSingleSampledInfoEXT}

  peek ptr = 
    VkMultisampledRenderToSingleSampledInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"multisampledRenderToSingleSampledEnable" ptr)
       <*> peek (offset @"rasterizationSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multisampledRenderToSingleSampledEnable" ptr val
    pokeField @"rasterizationSamples" ptr val

instance Offset "sType" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset struct VkMultisampledRenderToSingleSampledInfoEXT, sType}

instance Offset "pNext" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset struct VkMultisampledRenderToSingleSampledInfoEXT, pNext}

instance Offset "multisampledRenderToSingleSampledEnable" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset struct VkMultisampledRenderToSingleSampledInfoEXT, multisampledRenderToSingleSampledEnable}

instance Offset "rasterizationSamples" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset struct VkMultisampledRenderToSingleSampledInfoEXT, rasterizationSamples}

#else

module Vulkan.Types.Struct.VkMultisampledRenderToSingleSampledInfoEXT where

#endif