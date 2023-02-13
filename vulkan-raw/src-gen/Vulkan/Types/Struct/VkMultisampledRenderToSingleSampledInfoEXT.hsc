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
  sizeOf    _ = #{size      VkMultisampledRenderToSingleSampledInfoEXT}
  alignment _ = #{alignment VkMultisampledRenderToSingleSampledInfoEXT}

  peek ptr = 
    VkMultisampledRenderToSingleSampledInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multisampledRenderToSingleSampledEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multisampledRenderToSingleSampledEnable" ptr val
    pokeField @"rasterizationSamples" ptr val

instance Offset "sType" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset VkMultisampledRenderToSingleSampledInfoEXT, sType}

instance Offset "pNext" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset VkMultisampledRenderToSingleSampledInfoEXT, pNext}

instance Offset "multisampledRenderToSingleSampledEnable" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset VkMultisampledRenderToSingleSampledInfoEXT, multisampledRenderToSingleSampledEnable}

instance Offset "rasterizationSamples" VkMultisampledRenderToSingleSampledInfoEXT where
  rawOffset = #{offset VkMultisampledRenderToSingleSampledInfoEXT, rasterizationSamples}

#else

module Vulkan.Types.Struct.VkMultisampledRenderToSingleSampledInfoEXT where

#endif