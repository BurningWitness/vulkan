{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkAttachmentSampleLocationsEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkSampleLocationsInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentSampleLocationsEXT" #-} VkAttachmentSampleLocationsEXT =
       VkAttachmentSampleLocationsEXT
         { attachmentIndex :: #{type uint32_t}
         , sampleLocationsInfo :: VkSampleLocationsInfoEXT
         }

instance Storable VkAttachmentSampleLocationsEXT where
  sizeOf    _ = #{size      struct VkAttachmentSampleLocationsEXT}
  alignment _ = #{alignment struct VkAttachmentSampleLocationsEXT}

  peek ptr = 
    VkAttachmentSampleLocationsEXT
       <$> peek (offset @"attachmentIndex" ptr)
       <*> peek (offset @"sampleLocationsInfo" ptr)

  poke ptr val = do
    pokeField @"attachmentIndex" ptr val
    pokeField @"sampleLocationsInfo" ptr val

instance Offset "attachmentIndex" VkAttachmentSampleLocationsEXT where
  rawOffset = #{offset struct VkAttachmentSampleLocationsEXT, attachmentIndex}

instance Offset "sampleLocationsInfo" VkAttachmentSampleLocationsEXT where
  rawOffset = #{offset struct VkAttachmentSampleLocationsEXT, sampleLocationsInfo}

#else

module Vulkan.Types.Struct.VkAttachmentSampleLocationsEXT where

#endif