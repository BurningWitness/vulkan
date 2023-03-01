{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multisampled_render_to_single_sampled

module Vulkan.Types.Struct.VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT" #-} VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT =
       VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , multisampledRenderToSingleSampled :: VkBool32
         }

instance Storable VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multisampledRenderToSingleSampled" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multisampledRenderToSingleSampled" ptr val

instance Offset "sType" VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT, pNext}

instance Offset "multisampledRenderToSingleSampled" VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT, multisampledRenderToSingleSampled}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT where

#endif