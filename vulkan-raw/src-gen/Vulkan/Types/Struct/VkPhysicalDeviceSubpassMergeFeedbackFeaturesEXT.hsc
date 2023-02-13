{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subpass_merge_feedback

module Vulkan.Types.Struct.VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT" #-} VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT =
       VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subpassMergeFeedback :: VkBool32
         }

instance Storable VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subpassMergeFeedback" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subpassMergeFeedback" ptr val

instance Offset "sType" VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT, pNext}

instance Offset "subpassMergeFeedback" VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT, subpassMergeFeedback}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT where

#endif