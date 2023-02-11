{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Struct.VkPhysicalDeviceTransformFeedbackPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTransformFeedbackPropertiesEXT" #-} VkPhysicalDeviceTransformFeedbackPropertiesEXT =
       VkPhysicalDeviceTransformFeedbackPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxTransformFeedbackStreams :: #{type uint32_t}
         , maxTransformFeedbackBuffers :: #{type uint32_t}
         , maxTransformFeedbackBufferSize :: VkDeviceSize
         , maxTransformFeedbackStreamDataSize :: #{type uint32_t}
         , maxTransformFeedbackBufferDataSize :: #{type uint32_t}
         , maxTransformFeedbackBufferDataStride :: #{type uint32_t}
         , transformFeedbackQueries :: VkBool32
         , transformFeedbackStreamsLinesTriangles :: VkBool32
         , transformFeedbackRasterizationStreamSelect :: VkBool32
         , transformFeedbackDraw :: VkBool32
         }

instance Storable VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceTransformFeedbackPropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceTransformFeedbackPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceTransformFeedbackPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxTransformFeedbackStreams" ptr)
       <*> peek (offset @"maxTransformFeedbackBuffers" ptr)
       <*> peek (offset @"maxTransformFeedbackBufferSize" ptr)
       <*> peek (offset @"maxTransformFeedbackStreamDataSize" ptr)
       <*> peek (offset @"maxTransformFeedbackBufferDataSize" ptr)
       <*> peek (offset @"maxTransformFeedbackBufferDataStride" ptr)
       <*> peek (offset @"transformFeedbackQueries" ptr)
       <*> peek (offset @"transformFeedbackStreamsLinesTriangles" ptr)
       <*> peek (offset @"transformFeedbackRasterizationStreamSelect" ptr)
       <*> peek (offset @"transformFeedbackDraw" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxTransformFeedbackStreams" ptr val
    pokeField @"maxTransformFeedbackBuffers" ptr val
    pokeField @"maxTransformFeedbackBufferSize" ptr val
    pokeField @"maxTransformFeedbackStreamDataSize" ptr val
    pokeField @"maxTransformFeedbackBufferDataSize" ptr val
    pokeField @"maxTransformFeedbackBufferDataStride" ptr val
    pokeField @"transformFeedbackQueries" ptr val
    pokeField @"transformFeedbackStreamsLinesTriangles" ptr val
    pokeField @"transformFeedbackRasterizationStreamSelect" ptr val
    pokeField @"transformFeedbackDraw" ptr val

instance Offset "sType" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, pNext}

instance Offset "maxTransformFeedbackStreams" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, maxTransformFeedbackStreams}

instance Offset "maxTransformFeedbackBuffers" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, maxTransformFeedbackBuffers}

instance Offset "maxTransformFeedbackBufferSize" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, maxTransformFeedbackBufferSize}

instance Offset "maxTransformFeedbackStreamDataSize" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, maxTransformFeedbackStreamDataSize}

instance Offset "maxTransformFeedbackBufferDataSize" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, maxTransformFeedbackBufferDataSize}

instance Offset "maxTransformFeedbackBufferDataStride" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, maxTransformFeedbackBufferDataStride}

instance Offset "transformFeedbackQueries" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, transformFeedbackQueries}

instance Offset "transformFeedbackStreamsLinesTriangles" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, transformFeedbackStreamsLinesTriangles}

instance Offset "transformFeedbackRasterizationStreamSelect" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, transformFeedbackRasterizationStreamSelect}

instance Offset "transformFeedbackDraw" VkPhysicalDeviceTransformFeedbackPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceTransformFeedbackPropertiesEXT, transformFeedbackDraw}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTransformFeedbackPropertiesEXT where

#endif