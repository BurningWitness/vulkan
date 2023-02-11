{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Struct.VkPhysicalDeviceTransformFeedbackFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTransformFeedbackFeaturesEXT" #-} VkPhysicalDeviceTransformFeedbackFeaturesEXT =
       VkPhysicalDeviceTransformFeedbackFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , transformFeedback :: VkBool32
         , geometryStreams :: VkBool32
         }

instance Storable VkPhysicalDeviceTransformFeedbackFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceTransformFeedbackFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceTransformFeedbackFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceTransformFeedbackFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"transformFeedback" ptr)
       <*> peek (offset @"geometryStreams" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"transformFeedback" ptr val
    pokeField @"geometryStreams" ptr val

instance Offset "sType" VkPhysicalDeviceTransformFeedbackFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceTransformFeedbackFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackFeaturesEXT, pNext}

instance Offset "transformFeedback" VkPhysicalDeviceTransformFeedbackFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackFeaturesEXT, transformFeedback}

instance Offset "geometryStreams" VkPhysicalDeviceTransformFeedbackFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackFeaturesEXT, geometryStreams}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTransformFeedbackFeaturesEXT where

#endif