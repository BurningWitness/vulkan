{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkRenderPassSampleLocationsBeginInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentSampleLocationsEXT
import Vulkan.Types.Struct.VkSubpassSampleLocationsEXT



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassSampleLocationsBeginInfoEXT" #-} VkRenderPassSampleLocationsBeginInfoEXT =
       VkRenderPassSampleLocationsBeginInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachmentInitialSampleLocationsCount :: #{type uint32_t}
         , pAttachmentInitialSampleLocations :: Ptr VkAttachmentSampleLocationsEXT
         , postSubpassSampleLocationsCount :: #{type uint32_t}
         , pPostSubpassSampleLocations :: Ptr VkSubpassSampleLocationsEXT
         }

instance Storable VkRenderPassSampleLocationsBeginInfoEXT where
  sizeOf    _ = #{size      struct VkRenderPassSampleLocationsBeginInfoEXT}
  alignment _ = #{alignment struct VkRenderPassSampleLocationsBeginInfoEXT}

  peek ptr = 
    VkRenderPassSampleLocationsBeginInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"attachmentInitialSampleLocationsCount" ptr)
       <*> peek (offset @"pAttachmentInitialSampleLocations" ptr)
       <*> peek (offset @"postSubpassSampleLocationsCount" ptr)
       <*> peek (offset @"pPostSubpassSampleLocations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachmentInitialSampleLocationsCount" ptr val
    pokeField @"pAttachmentInitialSampleLocations" ptr val
    pokeField @"postSubpassSampleLocationsCount" ptr val
    pokeField @"pPostSubpassSampleLocations" ptr val

instance Offset "sType" VkRenderPassSampleLocationsBeginInfoEXT where
  rawOffset = #{offset struct VkRenderPassSampleLocationsBeginInfoEXT, sType}

instance Offset "pNext" VkRenderPassSampleLocationsBeginInfoEXT where
  rawOffset = #{offset struct VkRenderPassSampleLocationsBeginInfoEXT, pNext}

instance Offset "attachmentInitialSampleLocationsCount" VkRenderPassSampleLocationsBeginInfoEXT where
  rawOffset = #{offset struct VkRenderPassSampleLocationsBeginInfoEXT, attachmentInitialSampleLocationsCount}

instance Offset "pAttachmentInitialSampleLocations" VkRenderPassSampleLocationsBeginInfoEXT where
  rawOffset = #{offset struct VkRenderPassSampleLocationsBeginInfoEXT, pAttachmentInitialSampleLocations}

instance Offset "postSubpassSampleLocationsCount" VkRenderPassSampleLocationsBeginInfoEXT where
  rawOffset = #{offset struct VkRenderPassSampleLocationsBeginInfoEXT, postSubpassSampleLocationsCount}

instance Offset "pPostSubpassSampleLocations" VkRenderPassSampleLocationsBeginInfoEXT where
  rawOffset = #{offset struct VkRenderPassSampleLocationsBeginInfoEXT, pPostSubpassSampleLocations}

#else

module Vulkan.Types.Struct.VkRenderPassSampleLocationsBeginInfoEXT where

#endif