{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkSamplerCaptureDescriptorDataInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerCaptureDescriptorDataInfoEXT" #-} VkSamplerCaptureDescriptorDataInfoEXT =
       VkSamplerCaptureDescriptorDataInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , sampler :: VkSampler
         }

instance Storable VkSamplerCaptureDescriptorDataInfoEXT where
  sizeOf    _ = #{size      VkSamplerCaptureDescriptorDataInfoEXT}
  alignment _ = #{alignment VkSamplerCaptureDescriptorDataInfoEXT}

  peek ptr = 
    VkSamplerCaptureDescriptorDataInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"sampler" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"sampler" ptr val

instance Offset "sType" VkSamplerCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkSamplerCaptureDescriptorDataInfoEXT, sType}

instance Offset "pNext" VkSamplerCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkSamplerCaptureDescriptorDataInfoEXT, pNext}

instance Offset "sampler" VkSamplerCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkSamplerCaptureDescriptorDataInfoEXT, sampler}

#else

module Vulkan.Types.Struct.VkSamplerCaptureDescriptorDataInfoEXT where

#endif