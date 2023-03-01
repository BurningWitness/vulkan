{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkVideoSessionCreateInfoKHR}
  alignment _ = #{alignment VkVideoSessionCreateInfoKHR}

  peek ptr = 
    VkVideoSessionCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pVideoProfile" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pictureFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxCodedExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referencePictureFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDpbSlots" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxActiveReferencePictures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdHeaderVersion" ptr)

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
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, sType}

instance Offset "pNext" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, pNext}

instance Offset "queueFamilyIndex" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, queueFamilyIndex}

instance Offset "flags" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, flags}

instance Offset "pVideoProfile" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, pVideoProfile}

instance Offset "pictureFormat" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, pictureFormat}

instance Offset "maxCodedExtent" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, maxCodedExtent}

instance Offset "referencePictureFormat" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, referencePictureFormat}

instance Offset "maxDpbSlots" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, maxDpbSlots}

instance Offset "maxActiveReferencePictures" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, maxActiveReferencePictures}

instance Offset "pStdHeaderVersion" VkVideoSessionCreateInfoKHR where
  rawOffset = #{offset VkVideoSessionCreateInfoKHR, pStdHeaderVersion}

#else

module Vulkan.Types.Struct.VkVideoSessionCreateInfoKHR where

#endif