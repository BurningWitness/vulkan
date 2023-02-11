{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoSessionCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoSessionCreateFlagsKHR
import Vulkan.Types.Struct.VkExtensionProperties
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkVideoProfileInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoSessionCreateInfoKHR" #-} VkVideoSessionCreateInfoKHR =
       VkVideoSessionCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , queueFamilyIndex :: #{type uint32_t}
         , flags :: VkVideoSessionCreateFlagsKHR
         , pVideoProfile :: Ptr VkVideoProfileInfoKHR
         , pictureFormat :: VkFormat
         , maxCodedExtent :: VkExtent2D
         , referencePictureFormat :: VkFormat
         , maxDpbSlots :: #{type uint32_t}
         , maxActiveReferencePictures :: #{type uint32_t}
         , pStdHeaderVersion :: Ptr VkExtensionProperties
         }

instance Storable VkVideoSessionCreateInfoKHR where
  sizeOf    _ = #{size      struct VkVideoSessionCreateInfoKHR}
  alignment _ = #{alignment struct VkVideoSessionCreateInfoKHR}

  peek ptr = 
    VkVideoSessionCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"queueFamilyIndex" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"pVideoProfile" ptr)
       <*> peek (offset @"pictureFormat" ptr)
       <*> peek (offset @"maxCodedExtent" ptr)
       <*> peek (offset @"referencePictureFormat" ptr)
       <*> peek (offset @"maxDpbSlots" ptr)
       <*> peek (offset @"maxActiveReferencePictures" ptr)
       <*> peek (offset @"pStdHeaderVersion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"queueFamilyIndex" ptr val
    pokeField @"flags" ptr val
    pokeField @"pVideoProfile" ptr val
    pokeField @"pictureFormat" ptr val
    pokeField @"maxCodedExtent" ptr val
    pokeField @"referencePictureFormat" ptr val
    pokeField @"maxDpbSlots" ptr val
    pokeField @"maxActiveReferencePictures" ptr val
    pokeField @"pStdHeaderVersion" ptr val

instance Offset "sType" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, sType}

instance Offset "pNext" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, pNext}

instance Offset "queueFamilyIndex" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, queueFamilyIndex}

instance Offset "flags" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, flags}

instance Offset "pVideoProfile" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, pVideoProfile}

instance Offset "pictureFormat" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, pictureFormat}

instance Offset "maxCodedExtent" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, maxCodedExtent}

instance Offset "referencePictureFormat" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, referencePictureFormat}

instance Offset "maxDpbSlots" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, maxDpbSlots}

instance Offset "maxActiveReferencePictures" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, maxActiveReferencePictures}

instance Offset "pStdHeaderVersion" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionCreateInfoKHR, pStdHeaderVersion}

#else

module Vulkan.Types.Struct.VkVideoSessionCreateInfoKHR where

#endif